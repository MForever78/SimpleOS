enum {
    Tk,
    Hash,
    Name,
    Value,
    IdSize
};

enum {
    _ = 255,
    ADD  ,ADDU ,SUB  ,SUBU ,AND  ,OR   ,XOR  ,NOR  ,SLT  ,SLTU ,SLL  ,SRL  ,SRA  ,SLLV ,SRLV ,SRAV ,JR   ,JALR ,SCALL,ERET ,MFCO ,MTCO ,
    ADDI ,ADDIU,ANDI ,ORI  ,XORI ,LUI  ,LW   ,LH   ,LB   ,SW   ,SH   ,SB   ,SLTI ,SLTIU,
    BEQ  ,BNE  ,J    ,JAL  ,
    DB   ,DW   ,DD   ,STR  ,
    _ZERO,_AT  ,_V0  ,_V1  ,_A0  ,_A1  ,_A2  ,_A3  ,_T0  ,_T1  ,_T2  ,_T3  ,_T4  ,_T5  ,_T6  ,_T7  ,
    _S0  ,_S1  ,_S2  ,_S3  ,_S4  ,_S5  ,_S6  ,_S7  ,_T8  ,_T9  ,_K0  ,_K1  ,_GP  ,_SP  ,_FP  ,_RA  ,
    GLOB ,EXTN
};

enum { Id = 128, Reg, Imm, Labl, Directive };

char *p,
     *buf,
     *file,
     *output;

int  *sym,
     *id,
     *e,
     tk,
     ival,
     line,
     merl
     ;

void
next()
{
    char *pp;
    int sign;

    while ((tk = *p)) {
        ++p;
        if (tk == '\n') ++line;
        else if (tk == '#') {
            while (*p != 0 && *p != '\n') ++p;
        }
        else if (tk == '$') {
            if (*p >= '0' && *p <= '9') {
                ival = 0;
                while (*p >= '0' && *p <= '9') ival = ival * 10 + *p++ - '0';
                tk = Reg;
                return;
            }
            else {
                pp = p; tk = 0;
                while ((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9') || *p == '_')
                    tk = tk * 147 + *p++;
                tk = (tk << 6) + (p - pp);
                id = sym;
                while (id[Tk]) {
                    if (tk == id[Hash] && !strncmp((char*)id[Name], pp, p - pp) && id[Tk] >= _ZERO && id[Tk] <= _RA) {
                        tk = Reg;
                        ival = id[Tk] - _ZERO;
                        return;
                    }
                    id = id + IdSize;
                }
                printf("%s:%d: bad register `%.*s'\n", file, line, p - pp, pp);
                exit(-1);
            }
        }
        else if (tk == '.') {
            pp = p; tk = 0;
            while ((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9') || *p == '_')
                tk = tk * 147 + *p++;
            tk = (tk << 6) + (p - pp);
            id = sym;
            while (id[Tk]) {
                if (tk == id[Hash] && !strncmp((char*)id[Name], pp, p - pp) && id[Tk] >= GLOB && id[Tk] <= EXTN) {
                    tk = Directive;
                    ival = id[Tk];
                    return;
                }
                id = id + IdSize;
            }
            printf("%s:%d: bad directive `%.*s'\n", file, line, p - pp, pp);
            exit(-1);
        }
        else if ((tk >= 'a' && tk <= 'z') || (tk >= 'A' && tk <= 'Z') || tk == '_') {
            pp = p - 1;
            while ((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9')|| *p == '_')
                tk = tk * 147 + *p++;
            tk = (tk << 6) + (p - pp);
            id = sym;
            while (id[Tk]) {
                if (tk == id[Hash] && !strncmp((char*)id[Name], pp, p - pp)) {
                    tk = Id;
                    ival = id[Value] == ~0 ? ~0 : (id[Value] < 0 ? -id[Value] : id[Value]);   // calculate abs(id[Value])
                    return;
                }
                id = id + IdSize;
            }
            id[Name] = (int)pp;
            id[Hash] = tk;
            tk = id[Tk] = Id;
            ival = id[Value] = ~0;
            return;
        }
        else if (tk == '-' || (tk >= '0' && tk <= '9')) {
            if ((sign = (tk == '-'))) tk = *p++;
            if ((ival = tk - '0')) { while (*p >= '0' && *p <= '9') ival = ival * 10 + *p++ - '0'; }
            else if (*p == 'x' || *p == 'X') {
                while ((tk = *++p) && ((tk >= '0' && tk <= '9') || (tk >= 'a' && tk <= 'f') || (tk >= 'A' && tk <= 'F')))
                    ival = ival * 16 + (tk & 15) + (tk >= 'A' ? 9 : 0);
            }
            else { while (*p >= '0' && *p <= '7') ival = ival * 8 + *p++ - '0'; }
            if (sign) ival = -ival;
            tk = Imm;
            return;
        }
        else if (tk == '\'' || tk == '"') {
            pp = buf;
            while (*p != 0 && *p != tk) {
                if ((ival = *p++) == '\\') {
                    if ((ival = *p++) == 'n') ival = '\n';
                }
                if (tk == '"') *pp++ = ival;
            }
            ++p;
            if (tk == '"') ival = pp - buf; else tk = Imm;
            return;
        }
        else if ( tk == ',' || tk == '(' || tk == ')' || tk == ':' || tk == '[' || tk == ']') return;
        else if ( tk != ' ' && tk != '\n' && tk != '\t' && tk != '\r' && tk != '\b') {
            printf("%s:%d: bad token '%c'(%d)\n", file, line, tk, tk);
            exit(-1);
        }
    }
}

int
main(int argc, char **argv)
{
    int fd, poolsz, i, *lsym, *le, *rel, t, *lid, ltk, size;
    char *tp;

    int offset;

    merl = 0;

    --argc; ++argv;

    while (argc && **argv == '-') {
        if ((*argv)[1] == 'o') {
            if (! --argc) { printf("no output file\n"); exit(-1); }
            output = *++argv;
        }
        else if ((*argv)[1] == 'm') {
            merl = 1;
        }
        else { printf("unknown argument `%s'\n", *argv); exit(-1); }
        --argc; ++argv;
    }

    if (!output) { printf("no output file\n"); exit(-1); }
    if (!argc) { printf("usage: as -o output file ...\n"); exit(-1); }

    poolsz = 256 * 1024; // arbitrary size

    if (!(sym = malloc(poolsz))) { printf("could not malloc(%d) symbol area\n", poolsz); exit(-1); }
    if (!(buf = malloc(poolsz))) { printf("could not malloc(%d) buffer area\n", poolsz); exit(-1); }
    if (!(le = e = malloc(poolsz))) { printf("could not malloc(%d) exec area\n", poolsz); exit(-1); }

    memset(sym, 0, poolsz);
    memset(buf, 0, poolsz);
    memset(e, 0, poolsz);

    p = "add addu sub subu and or xor nor slt sltu sll srl sra sllv srlv srav jr jalr syscall eret mfco mtco "
        "addi addiu andi ori xori lui lw lh lb sw sh sb slti sltiu "
        "beq bne j jal "
        "db dw dd string "
        "zero at v0 v1 a0 a1 a2 a3 t0 t1 t2 t3 t4 t5 t6 t7 "
        "s0 s1 s2 s3 s4 s5 s6 s7 t8 t9 k0 k1 gp sp fp ra "
        "global extern ";
    i = ADD;
    while (i <= EXTN) { next(); id[Tk] = i++; }

    if (!(tp = p = malloc(poolsz))) { printf("could not malloc(%d) source area\n", poolsz); exit(-1); }

    offset = merl ? 12 : 0;
    lsym = sym;
    while (argc--) {
        if ((fd = open(file = *argv)) <= 0) { printf("could not open(%s)\n", *argv); exit(-1); }
        size = file_size(fd);
        if ((i = read(fd, p, 0, size)) <= 0) { printf("read() returned %d\n", i); exit(-1); }

        printf("size: %d, cluster: %d\n", size, *(int*)fd);

        close(fd);

        line = 1;
        next();
        while (tk) {
            if (tk == Id) {
                if ((id[Tk] >= ADD && id[Tk] <= SLTU) || (id[Tk] >= SLLV && id[Tk] <= SRAV)) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (
                        (id[Tk] >= SLL && id[Tk] <= SRA) || 
                        (id[Tk] >= ADDI && id[Tk] <= XORI) || 
                        (id[Tk] >= SLTI && id[Tk] <= SLTIU) ||
                        (id[Tk] >= BEQ && id[Tk] <= BNE)
                ) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Id && tk != Imm) { printf("%s:%d expect imm\n", file, line); exit(-1); }
                    next(); if (tk == '[') {
                        next(); if (tk != Id) { printf("%s:%d expect label\n", file, line); exit(-1); }
                        next(); if (tk != ']') { printf("%s:%d expect `]'\n", file, line); exit(-1); }
                        next();
                    }
                    offset = offset + 4;
                }
                else if (id[Tk] == JR) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] == JALR) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] == SCALL) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] == ERET) {
                    next();
                    offset = offset + 4;
                }
                else if ((id[Tk] >= MFCO && id[Tk] <= MTCO) || id[Tk] == LUI) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Imm) { printf("%s:%d expect imm\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] >= LW && id[Tk] <= SB) {
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ',') { printf("%s:%d expect `,'", file, line); exit(-1); }
                    next(); if (tk != Id && tk != Imm) { printf("%s:%d expect offset\n", file, line); exit(-1); }
                    next(); 
                    if (tk == '[') {
                        next(); if (tk != Id) { printf("%s:%d expect label\n", file, line); exit(-1); }
                        next(); if (tk != ']') { printf("%s:%d expect `]'\n", file, line); exit(-1); }
                        next();
                    }
                    if (tk != '(') { printf("%s:%d expect `('\n", file, line); exit(-1); }
                    next(); if (tk != Reg) { printf("%s:%d expect register\n", file, line); exit(-1); }
                    next(); if (tk != ')') { printf("%s:%d expect `)'\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] >= J && id[Tk] <= JAL) {
                    next(); if (tk != Id && tk != Imm) { printf("%s:%d expect address\n", file, line); exit(-1); }
                    next();
                    offset = offset + 4;
                }
                else if (id[Tk] == DB || id[Tk] == DW || id[Tk] == DD) {
                    next(); if (tk != Id && tk != Imm) { printf("%s:%d expect imm\n", file, line); exit(-1); }
                    next(); if (tk == '[') {
                        next(); if (tk != Id) { printf("%s:%d expect label\n", file, line); exit(-1); }
                        next(); if (tk != ']') { printf("%s:%d expect `]'\n", file, line); exit(-1); }
                        next();
                    }
                    offset = offset + 4;
                }
                else if (id[Tk] == STR) {
                    next(); if (tk != '"') { printf("%s:%d expect string\n", file, line); exit(-1); }
                    offset = ((offset + ival) & -sizeof(int)) + 4;
                    next();
                }
                else {
                    if (id[Tk] == Labl && id[Value] != ~0) { printf("%s:%id iduplicate label `%.*s'\n", file, line, id[Hash] & 0x3F, (char*)id[Name]); }
                    id[Tk] = Labl;
                    id[Value] = offset;
                    next();
                    if (tk != ':') { printf("%s:%d bad label\n", file, line); exit(-1); }
                    next();
                }
            }
            else if (tk == Directive) {
                if (ival == GLOB) {
                    next();
                    if (tk != Id) { printf("%s:%d bad global directive `%.*s'\n", file, line, id[Hash] & 0x3F, (char*)id[Name]); exit(-1); }
                    next();
                }
                else if (ival == EXTN) {
                    next(); 
                    if (tk != Id) { printf("%s:%d bad extern directive `%.*s'\n", file, line, id[Hash] & 0x3F, (char*)id[Name]); exit(-1); }
                    if (tk == Id || id[Tk] != Labl) {
                        // not exists in other files
                        id[Tk] = Labl;
                        id[Value] = ~0;
                    }
                    next();
                }
                else {
                    printf("%s:%d unsupported directive `%.*s'\n", file, line, id[Hash] & 0x3F, (char*)id[Name]);
                    exit(-1);
                }
            }
            else { printf("%s:%d bad inst\n", file, line); exit(-1); }
        }

        ++argv;
    }

    rel = (int*)((int)e + offset);

    if (merl) {
        *e++ = (0x04 << 26) | (0x02);
        *e++ = offset;
        e++;    // padding for file length
    }

    //
    // *--------*--------*--------*
    // |        | Reloc  | Extern |
    // *--------*--------*--------*
    // | B-Type |   /    |  0x02  |
    // *--------*--------*--------*
    // | I-Type |  0x11  |  0x12  |
    // *--------*--------*--------*
    // | J-Type |  0x21  |  0x22  |
    // *--------*--------*--------*
    // |   DD   |  0x31  |  0x32  |
    // *--------*--------*--------*
    //
    // Global : 0x00
    //

    p = tp;
    line = 1;
    next();
    while (tk) {
        if (tk == Id && id[Tk] != STR && id[Tk] != Labl) {
            i = 0;
            if (
                    (id[Tk] >= ADD && id[Tk] <= SLTU)  ||
                    (id[Tk] >= SLLV && id[Tk] <= SRAV)
            ) {
                if      (id[Tk] == ADD)     i = i | 0x20;
                else if (id[Tk] == ADDU)    i = i | 0x21;
                else if (id[Tk] == SUB)     i = i | 0x22;
                else if (id[Tk] == SUBU)    i = i | 0x23;
                else if (id[Tk] == AND)     i = i | 0x24;
                else if (id[Tk] == OR)      i = i | 0x25;
                else if (id[Tk] == XOR)     i = i | 0x26;
                else if (id[Tk] == NOR)     i = i | 0x27;
                else if (id[Tk] == SLT)     i = i | 0x2A;
                else if (id[Tk] == SLTU)    i = i | 0x2B;
                else if (id[Tk] == SLLV)    i = i | 0x04;
                else if (id[Tk] == SRLV)    i = i | 0x06;
                else if (id[Tk] == SRAV)    i = i | 0x07;
                next(); i = i | ((ival & 0x1F) << 11);  next();
                next(); i = i | ((ival & 0x1F) << 21);  next();
                next(); i = i | ((ival & 0x1F) << 16);  next();
            }
            else if (
                    id[Tk] >= SLL && id[Tk] <= SRA
            ) {
                if      (id[Tk] == SLL)     i = i | 0x00;
                else if (id[Tk] == SRL)     i = i | 0x02;
                else if (id[Tk] == SRA)     i = i | 0x03;
                next(); i = i | ((ival & 0x1F) << 11);  next();
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); i = i | ((ival & 0x1F) << 6);   next();
            }
            else if (
                    id[Tk] == JR
            ) {
                i = i | 0x08;
                next(); i = i | ((ival & 0x1F) << 21);  next();
            }
            else if (
                    id[Tk] == JALR
            ) {
                i = i | 0x09;
                next(); i = i | ((ival & 0x1F) << 21);  next();
                next(); i = i | ((ival & 0x1F) << 11);  next();
            }
            else if (
                    id[Tk] == SCALL
            ) {
                next(); i = i | ((ival & 0x1F) << 16);  next();
                i = i | 0x0C;
            }
            else if (
                    id[Tk] == ERET
            ) {
                i = (0x10 << 26) | (0x18);
                next();
            }
            else if (
                    id[Tk] == MFCO || id[Tk] == MTCO
            ) {
                if (id[Tk] == MTCO) i = i | 0x04;
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); i = i | ((ival & 0x1F) << 11);  next();
                i = i | (0x10 << 26);
            }
            else if (
                    (id[Tk] >= ADDI && id[Tk] <= XORI) ||
                    (id[Tk] >= SLTI && id[Tk] <= SLTIU)
            ) {
                if      (id[Tk] == ADDI)    i = i | (0x08 << 26);
                else if (id[Tk] == ADDIU)   i = i | (0x09 << 26);
                else if (id[Tk] == ANDI)    i = i | (0x0C << 26);
                else if (id[Tk] == ORI)     i = i | (0x0D << 26);
                else if (id[Tk] == XORI)    i = i | (0x0E << 26);
                else if (id[Tk] == SLTI)    i = i | (0x0A << 26);
                else if (id[Tk] == SLTIU)   i = i | (0x0B << 26);
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); i = i | ((ival & 0x1F) << 21);  next();
                next(); t = ival; lid = id; ltk = tk;   next();

                if (tk == '[') {
                    next();
                    if (ival == ~0) { printf("%s:%d refer to unresolved symbol\n", file, line); exit(-1); }
                    t = t - ival;
                    next(); next();
                }
                else {
                    if (merl && ltk == Id && (lid[Tk] == Labl || lid[Tk] == Id)) {
                        if (t == ~0) {
                            *rel++ = 0x12;
                            *rel++ = (int)e - (int)le;
                            *rel++ = lid[Hash] & 0x3F;
                            memcpy((char*)rel, (char*)lid[Name], lid[Hash] & 0x3F);
                            rel = (int*)((int)rel + (lid[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
                        }
                        else {
                            *rel++ = 0x11;
                            *rel++ = (int)e - (int)le;
                        }
                    }
                    else if (ltk == Id && ival == ~0) {
                        printf("unresolved label: `%.*s'\n", lid[Hash] & 0x3F, (char*)lid[Name]);
                        exit(-1);
                    }
                }
                if (t > 32767 || t < -32768) { printf("%s:%d imm/label too large (%d)\n", file, line, t); exit(-1); }
                i = i | (t & ((1 << 16) - 1));
            }
            else if (
                    id[Tk] == LUI
            ) {
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); i = i | (ival & ((i << 16) - 1)); next();
                i = i | (0x0F << 26);
            }
            else if (
                    id[Tk] >= LW && id[Tk] <= SB
            ) {
                if      (id[Tk] == LW)      i = i | (0x23 << 26);
                else if (id[Tk] == LH)      i = i | (0x21 << 26);
                else if (id[Tk] == LB)      i = i | (0x20 << 26);
                else if (id[Tk] == SW)      i = i | (0x2B << 26);
                else if (id[Tk] == SH)      i = i | (0x29 << 26);
                else if (id[Tk] == SB)      i = i | (0x28 << 26);
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); t = ival; lid = id; ltk = tk;   next();
                if (tk == '[') {
                    next();
                    if (ival == ~0) { printf("%s:%d refer to unresolved symbol\n", file, line); exit(-1); }
                    t = t - ival;
                    next(); next();
                }
                else {
                    if (merl && ltk == Id && (lid[Tk] == Labl || lid[Tk] == Id)) {
                        if (t == ~0) {
                            // external labels
                            *rel++ = 0x12;
                            *rel++ = (int)e - (int)le;
                            *rel++ = lid[Hash] & 0x3F;
                            memcpy((char*)rel, (char*)lid[Name], lid[Hash] & 0x3F);
                            rel = (int*)((int)rel + (lid[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
                        }
                        else {
                            *rel++ = 0x11;
                            *rel++ = (int)e - (int)le;
                        }
                    }
                    else if (ltk == Id && ival == ~0) {
                        printf("unresolved label: `%.*s'\n", lid[Hash] & 0x3F, (char*)lid[Name]);
                        exit(-1);
                    }
                }
                if (t > 32767 || t < -32768) { printf("%s:%d imm/label too large (%d)\n", file, line, t); exit(-1); }
                i = i | (t & ((1 << 16) - 1));
                next(); i = i | ((ival & 0x1F) << 21);  next(); next();
            }
            else if (
                    id[Tk] >= BEQ && id[Tk] <= BNE
            ) {
                if      (id[Tk] == BEQ)     i = i | (0x04 << 26);
                else if (id[Tk] == BNE)     i = i | (0x05 << 26);
                next(); i = i | ((ival & 0x1F) << 16);  next();
                next(); i = i | ((ival & 0x1F) << 21);  next();
                next(); 
                if (merl && tk == Id && (id[Tk] == Labl || id[Tk] == Id) && ival == ~0) {
                    // external labels
                    *rel++ = 0x02;
                    *rel++ = (int)e - (int)le;
                    *rel++ = id[Hash] & 0x3F;
                    memcpy((char*)rel, (char*)id[Name], id[Hash] & 0x3F);
                    rel = (int*)((int)rel + (id[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
                }
                else if (tk == Id && ival == ~0) {
                    printf("unresolved label: `%.*s'\n", id[Hash] & 0x3F, (char*)id[Name]);
                    exit(-1);
                }
                if (id[Tk] == Labl) ival = (ival - ((int)e - (int)le) - 4) >> 2;
                if (ival > 32767 || ival < -32768) { printf("%s:%d imm/label too large (%d)\n", file, line, t); exit(-1); }
                i = i | (ival & ((1 << 16) - 1));
                next();
            }
            else if (
                    id[Tk] == J || id[Tk] == JAL
            ) {
                i = ((id[Tk] == J ? 0x02 : 3) << 26);
                next();
                if (id[Tk] == Labl || tk == Imm) ival = (ival) >> 2;
                if (merl && tk == Id && (id[Tk] == Labl || id[Tk] == Id)) {
                    if (ival == ~0) {
                        // external labels
                        *rel++ = 0x22;
                        *rel++ = (int)e - (int)le;
                        *rel++ = id[Hash] & 0x3F;
                        memcpy((char*)rel, (char*)id[Name], id[Hash] & 0x3F);
                        rel = (int*)((int)rel + (id[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
                    }
                    else {
                        *rel++ = 0x21;
                        *rel++ = (int)e - (int)le;
                    }
                }
                else if (tk == Id && ival == ~0) {
                    printf("unresolved label: `%.*s'\n", id[Hash] & 0x3F, (char*)id[Name]);
                    exit(-1);
                }
                i = i | (ival & ((1 << 26) - 1));
                next();
            }
            else if (
                    id[Tk] >= DB && id[Tk] <= DD
            ) {
                next();
                i = ival;
                if (merl && tk == Id && (id[Tk] == Labl || id[Tk] == Id)) {
                    if (ival == ~0) {
                        // external labels
                        *rel++ = 0x32;
                        *rel++ = (int)e - (int)le;
                        *rel++ = id[Hash] & 0x3F;
                        memcpy((char*)rel, (char*)id[Name], id[Hash] & 0x3F);
                        rel = (int*)((int)rel + (id[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
                    }
                    else {
                        *rel++ = 0x31;
                        *rel++ = (int)e - (int)le;
                    }
                }
                else if (tk == Id && ival == ~0) {
                    printf("unresolved label: `%.*s'\n", id[Hash] & 0x3F, (char*)id[Name]);
                    exit(-1);
                }
                next();
            }
            *e++ = i;
        }
        else if (tk == Id && id[Tk] == STR) {
            next();
            memcpy((char*)e, buf, ival);
            e = (int*)((int)e + ival + sizeof(int) & -sizeof(int));
            next();
        }
        else if (tk == Id && id[Tk] == Labl) {
            next();
            next();
        }
        else if (tk == Directive) {
            if (ival == GLOB) {
                next();
                if (tk != Id || id[Tk] != Labl) { printf("%s:%d bad global directive `%.*s'\n", file, line, id[Hash] & 0x3F, (char*)id[Name]); exit(-1); }
                id[Value] = -id[Value];
            }
            else {
                next();
            }
            next();
        }
    }

    if (merl) {
        id = sym;
        // globals
        while (id[Tk]) {
            if (id[Tk] == Labl && id[Value] != ~0 && id[Value] < 0) {
                *rel++ = 0x00;
                *rel++ = -id[Value];
                *rel++ = id[Hash] & 0x3F;
                memcpy((char*)rel, (char*)id[Name], id[Hash] & 0x3F);
                rel = (int*)((int)rel + (id[Hash] & 0x3F) + sizeof(int) & -sizeof(int));
            }
            id = id + IdSize;
        }
        le[2] = (int)rel - (int)le;
    }

    if ((fd = create(output)) <= 0) { printf("open returned %d\n", fd); exit(-1); }
    write(fd, le, 0, (int)rel - (int)le);
    close(fd);

    free(sym);
    free(buf);
    free(le);

    return 0;
}
