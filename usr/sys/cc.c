// c4.c - C in four functions

// char, int, and pointer types
// if, while, return, and expression statements
// just enough features to allow self-compilation and a bit more

// Written by Robert Swierczek

char *p, *lp, // current position in source code
     *data,   // data/bss pointer
     *buff,
     *file;

int *e, *le,  // current position in emitted code
    *id,      // currently parsed identifier
    *sym,     // symbol table (simple list of identifiers)
    *current_func,
    tk,       // current token
    ival,     // current token value
    ty,       // current expression type
    loc,      // local variable offset
    line,     // current line number
    st,
    tl;

// tokens and classes (operators last and in precedence order)
enum {
    Num = 128, Fun, Sys, Glo, Ext, Arg, Loc, Id,
    Char, Else, Enum, If, Int, Return, Sizeof, While,
    Assign, Cond, Lor, Lan, Or, Xor, And, Eq, Ne, Lt, Gt, Le, Ge, Shl, Shr, Add, Sub, Mul, Div, Mod, Inc, Dec, Brak
};

// opcodes
enum {
    STR ,GLO ,EXT ,LOC ,ARG ,IMM ,JMP ,CALL,BZ  ,BNZ ,LEV ,LI  ,LC  ,SI  ,SC  ,PSH ,
    OR  ,XOR ,AND ,EQ  ,NE  ,LT  ,GT  ,LE  ,GE  ,SHL ,SHR ,ADD ,SUB ,MUL ,DIV ,MOD ,LABL,CMMT
};

// types
enum { CHAR, INT, PTR };

// identifier offsets (since we can't create an ident struct)
enum { Tk, Hash, Name, Class, Type, Val, HClass, HType, HVal, Idsz };

void next()
{
    char *pp;

    while ((tk = *p)) {
        ++p;
        if (tk == '\n') ++line;
        else if (tk == '#') {
            while (*p != 0 && *p != '\n') ++p;
        }
        else if ((tk >= 'a' && tk <= 'z') || (tk >= 'A' && tk <= 'Z') || tk == '_') {
            pp = p - 1;
            while ((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9') || *p == '_')
                tk = tk * 147 + *p++;
            tk = (tk << 6) + (p - pp);
            id = sym;
            while (id[Tk]) {
                if (tk == id[Hash] && !strncmp((char *)id[Name], pp, p - pp)) { tk = id[Tk]; return; }
                id = id + Idsz;
            }
            id[Name] = (int)pp;
            id[Hash] = tk;
            id[Class] = 0;
            tk = id[Tk] = Id;
            return;
        }
        else if (tk >= '0' && tk <= '9') {
            if ((ival = tk - '0')) { while (*p >= '0' && *p <= '9') ival = ival * 10 + *p++ - '0'; }
            else if (*p == 'x' || *p == 'X') {
                while ((tk = *++p) && ((tk >= '0' && tk <= '9') || (tk >= 'a' && tk <= 'f') || (tk >= 'A' && tk <= 'F')))
                    ival = ival * 16 + (tk & 15) + (tk >= 'A' ? 9 : 0);
            }
            else { while (*p >= '0' && *p <= '7') ival = ival * 8 + *p++ - '0'; }
            tk = Num;
            return;
        }
        else if (tk == '/') {
            if (*p == '/') {
                ++p;
                while (*p != 0 && *p != '\n') ++p;
            }
            else {
                tk = Div;
                return;
            }
        }
        else if (tk == '\'' || tk == '"') {
            pp = data;
            while (*p != 0 && *p != tk) {
                if ((ival = *p++) == '\\') {
                    if ((ival = *p) == 'n') { ival = '\n'; ++p; }
                    else if ((ival = *p) == 't') { ival = '\t'; ++p; }
                    else { ++p; }
                }
                if (tk == '"') *data++ = ival;
            }
            ++p;
            if (tk == '"') ival = (int)pp; else tk = Num;
            return;
        }
        else if (tk == '=') { if (*p == '=') { ++p; tk = Eq; } else tk = Assign; return; }
        else if (tk == '+') { if (*p == '+') { ++p; tk = Inc; } else tk = Add; return; }
        else if (tk == '-') { if (*p == '-') { ++p; tk = Dec; } else tk = Sub; return; }
        else if (tk == '!') { if (*p == '=') { ++p; tk = Ne; } return; }
        else if (tk == '<') { if (*p == '=') { ++p; tk = Le; } else if (*p == '<') { ++p; tk = Shl; } else tk = Lt; return; }
        else if (tk == '>') { if (*p == '=') { ++p; tk = Ge; } else if (*p == '>') { ++p; tk = Shr; } else tk = Gt; return; }
        else if (tk == '|') { if (*p == '|') { ++p; tk = Lor; } else tk = Or; return; }
        else if (tk == '&') { if (*p == '&') { ++p; tk = Lan; } else tk = And; return; }
        else if (tk == '^') { tk = Xor; return; }
        else if (tk == '%') { tk = Mod; return; }
        else if (tk == '*') { tk = Mul; return; }
        else if (tk == '[') { tk = Brak; return; }
        else if (tk == '?') { tk = Cond; return; }
        else if (tk == '~' || tk == ';' || tk == '{' || tk == '}' || tk == '(' || tk == ')' || tk == ']' || tk == ',' || tk == ':') return;
    }
}

void expr(int lev)
{
    int t, *d;

    if (!tk) { printf("%d: unexpected eof in expression\n", line); exit(-1); }
    else if (tk == Num) { *++e = IMM; *++e = ival; next(); ty = INT; }
    else if (tk == '"') {
        *++e = STR; *++e = ival; next();
        while (tk == '"') next();
        data = (char *)((int)data + sizeof(int) & -sizeof(int)); ty = PTR;
    }
    else if (tk == Sizeof) {
        next(); if (tk == '(') next(); else { printf("%d: open paren expected in sizeof\n", line); exit(-1); }
        ty = INT; if (tk == Int) next(); else if (tk == Char) { next(); ty = CHAR; }
        while (tk == Mul) { next(); ty = ty + PTR; }
        if (tk == ')') next(); else { printf("%d: close paren expected in sizeof\n", line); exit(-1); }
        *++e = IMM; *++e = (ty == CHAR) ? sizeof(char) : sizeof(int);
        ty = INT;
    }
    else if (tk == Id) {
        d = id; next();
        if (tk == '(') {
            next();
            t = 0;
            while (tk != ')') { expr(Assign); *++e = PSH; ++t; if (tk == ',') next(); }
            next();
            if ((d[Class] == Fun || d[Class] == 0)) { *++e = CALL; *++e = t; *++e = (int)d; }
            else { printf("%d: bad function call\n", line); exit(-1); }
            ty = d[Type];
        }
        else if (d[Class] == Num) { *++e = IMM; *++e = d[Val]; ty = INT; }
        else {
            if (d[Class] == Loc) { *++e = LOC; *++e = d[Val]; }
            else if (d[Class] == Arg) { *++e = ARG; *++e = d[Val]; }
            else if (d[Class] == Glo) {
                *++e = GLO; *++e = (int)d;
            }
            else if (d[Class] == Ext) {
                *++e = EXT;
                *++e = (int)d;
            }
            else {
                // externel symbol
                *++e = EXT;
                *++e = (int)d;
                d[Type] = INT;
                d[Class] = Ext;
                tl = sprintf(buff, 
                        "_%.*s_%.*s_ext:\n"
                        "    dd   %.*s\n",
                        current_func[Hash] & 0x3F, (char*)current_func[Name],
                        d[Hash] & 0x3F, (char*)d[Name],
                        d[Hash] & 0x3F, (char*)d[Name]
                    );
                buff = buff + tl;
            }
            *++e = ((ty = d[Type]) == CHAR) ? LC : LI;
        }
    }
    else if (tk == '(') {
        next();
        if (tk == Int || tk == Char) {
            t = (tk == Int) ? INT : CHAR; next();
            while (tk == Mul) { next(); t = t + PTR; }
            if (tk == ')') next(); else { printf("%d: bad cast\n", line); exit(-1); }
            expr(Inc);
            ty = t;
        }
        else {
            expr(Assign);
            if (tk == ')') next(); else { printf("%d: close paren expected\n", line); exit(-1); }
        }
    }
    else if (tk == Mul) {
        next(); expr(Inc);
        if (ty > INT) ty = ty - PTR; else { printf("%d: bad dereference\n", line); exit(-1); }
        *++e = (ty == CHAR) ? LC : LI;
    }
    else if (tk == And) {
        next(); expr(Inc);
        if (*e == LC || *e == LI) --e; else { printf("%d: bad address-of\n", line); exit(-1); }
        ty = ty + PTR;
    }
    else if (tk == '!') { next(); expr(Inc); *++e = PSH; *++e = IMM; *++e = 0; *++e = EQ; ty = INT; }
    else if (tk == '~') { next(); expr(Inc); *++e = PSH; *++e = IMM; *++e = -1; *++e = XOR; ty = INT; }
    else if (tk == Add) { next(); expr(Inc); ty = INT; }
    else if (tk == Sub) {
        next(); *++e = IMM;
        if (tk == Num) { *++e = -ival; next(); } else { *++e = 0; *++e = PSH; expr(Inc); *++e = SUB; }
        ty = INT;
    }
    else if (tk == Inc || tk == Dec) {
        t = tk; next(); expr(Inc);
        if (*e == LC) { *e = PSH; *++e = LC; }
        else if (*e == LI) { *e = PSH; *++e = LI; }
        else { printf("%d: bad lvalue in pre-increment\n", line); exit(-1); }
        *++e = PSH;
        *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
        *++e = (t == Inc) ? ADD : SUB;
        *++e = (ty == CHAR) ? SC : SI;
    }
    else { printf("%d: bad expression\n", line); exit(-1); }

    while (tk >= lev) { // "precedence climbing" or "Top Down Operator Precedence" method
        t = ty;
        if (tk == Assign) {
            next();
            if (*e == LC || *e == LI) *e = PSH; else { printf("%d: bad lvalue in assignment\n", line); exit(-1); }
            expr(Assign); *++e = ((ty = t) == CHAR) ? SC : SI;
        }
        else if (tk == Cond) {
            next();
            *++e = BZ; d = ++e;
            expr(Assign);
            if (tk == ':') next(); else { printf("%d: conditional missing colon\n", line); exit(-1); }
            *d = (int)(e + 3); *++e = JMP; d = ++e; *++e = LABL;
            expr(Cond);
            *(int*)(*d = (int)++e) = LABL;
        }
        else if (tk == Lor) {
            next();
            *++e = PSH;
            *++e = BNZ;
            d = ++e;
            *++e = OR;
            expr(Lan);
            *++e = PSH;
            *(int*)(*d = (int)++e) = LABL;
            *++e = OR;
            ty = INT;
        }
        else if (tk == Lan) {
            next();
            *++e = PSH;
            *++e = BZ;
            d = ++e;
            *++e = AND;
            expr(Or);
            *++e = PSH;
            *(int*)(*d = (int)++e) = LABL;
            *++e = AND;
            ty = INT;
        }
        else if (tk == Or)  { next(); *++e = PSH; expr(Xor); *++e = OR;  ty = INT; }
        else if (tk == Xor) { next(); *++e = PSH; expr(And); *++e = XOR; ty = INT; }
        else if (tk == And) { next(); *++e = PSH; expr(Eq);  *++e = AND; ty = INT; }
        else if (tk == Eq)  { next(); *++e = PSH; expr(Lt);  *++e = EQ;  ty = INT; }
        else if (tk == Ne)  { next(); *++e = PSH; expr(Lt);  *++e = NE;  ty = INT; }
        else if (tk == Lt)  { next(); *++e = PSH; expr(Shl); *++e = LT;  ty = INT; }
        else if (tk == Gt)  { next(); *++e = PSH; expr(Shl); *++e = GT;  ty = INT; }
        else if (tk == Le)  { next(); *++e = PSH; expr(Shl); *++e = LE;  ty = INT; }
        else if (tk == Ge)  { next(); *++e = PSH; expr(Shl); *++e = GE;  ty = INT; }
        else if (tk == Shl) { next(); *++e = PSH; expr(Add); *++e = SHL; ty = INT; }
        else if (tk == Shr) { next(); *++e = PSH; expr(Add); *++e = SHR; ty = INT; }
        else if (tk == Add) {
            next(); *++e = PSH; expr(Mul);
            if ((ty = t) > PTR) { *++e = PSH; *++e = IMM; *++e = 2; *++e = SHL;  }
            *++e = ADD;
        }
        else if (tk == Sub) {
            next(); *++e = PSH; expr(Mul);
            if (t > PTR && t == ty) { *++e = SUB; *++e = PSH; *++e = IMM; *++e = sizeof(int); *++e = DIV; ty = INT; }
            else if ((ty = t) > PTR) { *++e = PSH; *++e = IMM; *++e = 2; *++e = SHL; *++e = SUB; }
            else *++e = SUB;
        }
        else if (tk == Mul) { next(); *++e = PSH; expr(Inc); *++e = MUL; ty = INT; }
        else if (tk == Div) { next(); *++e = PSH; expr(Inc); *++e = DIV; ty = INT; }
        else if (tk == Mod) { next(); *++e = PSH; expr(Inc); *++e = MOD; ty = INT; }
        else if (tk == Inc || tk == Dec) {
            if (*e == LC) { *e = PSH; *++e = LC; }
            else if (*e == LI) { *e = PSH; *++e = LI; }
            else { printf("%d: bad lvalue in post-increment\n", line); exit(-1); }
            *++e = PSH; *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
            *++e = (tk == Inc) ? ADD : SUB;
            *++e = (ty == CHAR) ? SC : SI;
            *++e = PSH; *++e = IMM; *++e = (ty > PTR) ? sizeof(int) : sizeof(char);
            *++e = (tk == Inc) ? SUB : ADD;
            next();
        }
        else if (tk == Brak) {
            next(); *++e = PSH; expr(Assign);
            if (tk == ']') next(); else { printf("%d: close bracket expected\n", line); exit(-1); }
            if (t > PTR) { *++e = PSH; *++e = IMM; *++e = 2; *++e = SHL;  }
            else if (t < PTR) { printf("%d: pointer type expected\n", line); exit(-1); }
            *++e = ADD;
            *++e = ((ty = t - PTR) == CHAR) ? LC : LI;
        }
        else { printf("%d: compiler error tk=%d\n", line, tk); exit(-1); }
    }
}

void
codegen(int *e, int *le)
{
    int i, lst;

    st = -1;
    lst = 0;    // last in stack
    while (e != le) {
        if (*e == STR)      {
            tl = sprintf(buff, "    addi $v0, $ra, s%x[_%.*s_ref_pos]\n",
                    *++e, current_func[Hash] & 0x3F, (char*)current_func[Name]);
            buff = buff + tl; lst = 0;
        }
        else if (*e == GLO) {
            ++e;
            lst = 0;
            tl = sprintf(buff, 
                    "    lw   $v0, _%.*s_module_ref[_%.*s_ref_pos]($ra)\n",
                    current_func[Hash] & 0x3F, (char*)current_func[Name],
                    current_func[Hash] & 0x3F, (char*)current_func[Name],
                );
            buff = buff + tl;
            tl = sprintf(buff, 
                    "    addi $v0, $v0, %.*s[_%.*s_ref]\n",
                    ((int*)(*e))[Hash] & 0x3F, (char*)((int*)(*e))[Name],
                    strchr(file, '.') - file, file
                );
            buff = buff + tl;
        }
        else if (*e == EXT) {
            ++e;
            tl = sprintf(buff, "    lw   $v0, _%.*s_%.*s_ext[_%.*s_ref_pos]($ra)\n", 
                        current_func[Hash] & 0x3F, (char*)current_func[Name],
                        ((int*)(*e))[Hash] & 0x3F, (char*)((int*)(*e))[Name],
                        current_func[Hash] & 0x3F, (char*)current_func[Name]
                    );
            buff = buff + tl;
        }
        else if (*e == LOC) {
            lst = 0;
            if (*(e + 2) == LI) {
                tl = sprintf(buff, "    lw   $v0, -%d($fp)\n", (*++e + 1) << 2);
                buff = buff + tl; ++e;
            }
            else if (*(e + 2) == LC) {
                tl = sprintf(buff, "    lb   $v0, -%d($fp)\n", (*++e + 1) << 2);
                buff = buff + tl; ++e;
            }
            else if (*(e + 2) == PSH) {
                tl = sprintf(buff, "    addi $t%d, $fp, -%d\n", ++st, (*++e + 1) << 2);
                buff = buff + tl; ++e; lst = 1;
            }
            else {
                tl = printf(buff, "    addi $v0, $fp, -%d\n", (*++e + 1) << 2);
                buff = buff + tl;
            }
        }
        else if (*e == ARG) {
            lst = 0;
            if (*(e + 2) == LI) { tl = sprintf(buff, "    lw   $v0, %d($fp)\n", (*++e + 2) << 2); buff = buff + tl; ++e; }
            else if (*(e + 2) == LC) { tl = sprintf(buff, "    lb   $v0, %d($fp)\n", (*++e + 2) << 2); buff = buff + tl; ++e; }
            else if (*(e + 2) == PSH) {
                tl = sprintf(buff, "    addi $t%d, $fp, %d\n", ++st, (*++e + 2) << 2);
                buff = buff + tl; ++e; lst = 1; 
            }
            else { tl = sprintf(buff, "    addi $v0, $fp, %d\n", (*++e + 2) << 2); buff = buff + tl; }
        }
        else if (*e == IMM) {
            ++e;
            if (*e <= 32767 && *e >= -32768) {
                lst = 0;
                if (*(e + 1) == LI || *(e + 1) == LC) {
                    tl = sprintf(buff, "    %s   $v0, %d($gp)\n", *(e + 1) == LI ? "lw" : "lb", *e);
                    buff = buff + tl; ++e;
                }
                else if (*(e + 1) == PSH) {
                    tl = sprintf(buff, "    addi $t%d, $zero, %d\n", ++st, *e);
                    buff = buff + tl; ++e; lst = 1; 
                }
                else if (*(e + 1) == OR)  { tl = sprintf(buff, "    ori  $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == XOR) { tl = sprintf(buff, "    xori $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == AND) { tl = sprintf(buff, "    andi $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == NE)  { tl = sprintf(buff, "    addi $v0, $t%d, %d\n", st--, -*e); buff = buff + tl; ++e; }
                else if (*(e + 1) == SHL) { tl = sprintf(buff, "    sll  $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == SHR) { tl = sprintf(buff, "    srl  $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == ADD) { tl = sprintf(buff, "    addi $v0, $t%d, %d\n", st--, *e); buff = buff + tl; ++e; }
                else if (*(e + 1) == SUB) { tl = sprintf(buff, "    addi $v0, $t%d, %d\n", st--, -*e); buff = buff + tl; ++e; }
                else { tl = sprintf(buff, "    addi $v0, $zero, %d\n", *e); buff = buff + tl; }
            }
            else { printf("Imm too large: %d\n", *e); exit(-1); }
        }
        else if (*e == JMP) {
            // address indepent code
            tl = sprintf(buff, "    beq  $zero, $zero, _%.*s_%x\n", current_func[Hash] & 0x3F, (char*)current_func[Name], *++e);
            buff = buff + tl; 
        }
        else if (*e == CALL) {
            ++e; i = 0; lst = 0;
            tl = sprintf(buff, "    addi $sp, $sp, -4\n    sw   $ra, 0($sp)\n"); buff = buff + tl;
            tl = sprintf(buff, "    addi $sp, $sp, -%d\n", (st + 1) << 2); buff = buff + tl;
            while (i <= st - *e) {
                tl = sprintf(buff, "    sw   $t%d, %d($sp)\n", i, (st - i) << 2);
                buff = buff + tl; ++i; 
            }  // save temp stack
            while (i <= st) {
                tl = sprintf(buff, "    sw   $t%d, %d($sp)\n", (st - *e) + (st - i) + 1, (st - i) << 2); buff = buff + tl; ++i;
            }

            tl = sprintf(buff, "    jal  %.*s\n", ((int*)(*(e + 1)))[Hash] & 0x3F, (char*)((int*)(*(e + 1)))[Name]);
            buff = buff + tl; 

            i = 0;
            while (i <= st - *e) { tl = sprintf(buff, "    lw   $t%d, %d($sp)\n", i, (st - i) << 2); buff = buff + tl; ++i; }
            tl = sprintf(buff, "    addi $sp, $sp, %d\n", (st + 1) << 2); buff = buff + tl;
            tl = sprintf(buff, "    lw   $ra, 0($sp)\n    addi $sp, $sp, 4\n"); buff = buff + tl;
            st = st - *e;

            ++e;
        }
        else if (*e == BZ)  {
            if (lst) {
                tl = sprintf(buff, "    beq  $t%d, $zero, _%.*s_%x\n", 
                        st, current_func[Hash] & 0x3F, (char*)current_func[Name], *++e);
                buff = buff + tl;
            }
            else {
                tl = sprintf(buff, "    beq  $v0, $zero, _%.*s_%x\n", current_func[Hash] & 0x3F, (char*)current_func[Name], *++e);
                buff = buff + tl; 
            }
        }
        else if (*e == BNZ) {
            if (lst) {
                tl = sprintf(buff, "    bne  $t%d, $zero, _%.*s_%x\n",
                        st, current_func[Hash] & 0x3F, (char*)current_func[Name], *++e);
                buff = buff + tl; 
            }
            else {
                tl = sprintf(buff, "    bne  $v0, $zero, _%.*s_%x\n",
                        current_func[Hash] & 0x3F, (char*)current_func[Name], *++e);
                buff = buff + tl;
            }
        }
        else if (*e == LEV) {
            if (e + 1 != le) {  // at the end of function
                tl = sprintf(buff, "    j    _%.*s_end\n", current_func[Hash] & 0x3F, (char*)current_func[Name]); buff = buff + tl; 
            }
        }
        else if (*e == LI)  {
            if (lst) { tl = sprintf(buff, "    lw   $v0, 0($t%d)\n", st); buff = buff + tl; }
            else { tl = sprintf(buff, "    lw   $v0, 0($v0)\n"); buff = buff + tl; }
            lst = 0;
        }
        else if (*e == LC)  {
            if (lst) { tl = sprintf(buff, "    lb   $v0, 0($t%d)\n", st); buff = buff + tl; }
            else { tl = sprintf(buff, "    lb   $v0, 0($v0)\n"); buff = buff + tl;}
            lst = 0;
        }
        else if (*e == SI)  { lst = 0; tl = sprintf(buff, "    sw   $v0, 0($t%d)\n", st--); buff = buff + tl; }
        else if (*e == SC)  { lst = 0; tl = sprintf(buff, "    sb   $v0, 0($t%d)\n", st--); buff = buff + tl; }
        else if (*e == PSH) { tl = sprintf(buff, "    addi $t%d, $v0, 0\n", ++st); buff = buff + tl; }
        else if (*e == OR)  { lst = 0; tl = sprintf(buff, "    or   $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == XOR) { lst = 0; tl = sprintf(buff, "    xor  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == AND) { lst = 0; tl = sprintf(buff, "    and  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == EQ)  {
            lst = 0;
            if (*(e + 1) == BNZ) {
                e = e + 2;
                tl = sprintf(buff, "    beq  $v0, $t%d, _%.*s_%x\n",
                        st--, current_func[Hash] & 0x3F, (char*)current_func[Name], *e);
                buff = buff + tl;
            }
            else if (*(e + 1) == BZ) {
                e = e + 2;
                tl = sprintf(buff, "    bne  $v0, $t%d, _%.*s_%x\n",
                        st--, current_func[Hash] & 0x3F, (char*)current_func[Name], *e);
                buff = buff + tl;
            }
            else {
                tl = sprintf(buff, 
                        "    beq  $v0, $t%d, 2\n"
                        "    addi $v0, $zero, 0\n"
                        "    beq  $zero, $zero, 1\n"
                        "    addi $v0, $zero, 1\n", st--
                    );
                buff = buff + tl;
            }
        }
        else if (*e == NE)  { tl = sprintf(buff, "    sub  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == LT)  { tl = sprintf(buff, "    slt  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == LE)  { tl = sprintf(buff, "    slt  $v0, $v0, $t%d\n    addi $v0, $v0, -1\n", st--); buff = buff + tl; }
        else if (*e == GT)  { tl = sprintf(buff, "    slt  $v0, $v0, $t%d\n", st--); buff = buff + tl; }
        else if (*e == GE)  { tl = sprintf(buff, "    slt  $v0, $t%d, $v0\n    addi $v0, $v0, -1\n", st--); buff = buff + tl; }
        else if (*e == SHL) { tl = sprintf(buff, "    sllv $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == SHR) { tl = sprintf(buff, "    srlv $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == ADD) { tl = sprintf(buff, "    add  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == SUB) { tl = sprintf(buff, "    sub  $v0, $t%d, $v0\n", st--); buff = buff + tl; }
        else if (*e == MUL || *e == DIV || *e == MOD) {
            tl = sprintf(buff, "    addi $sp, $sp, -4\n    sw   $ra, 0($sp)\n"); buff = buff + tl;
            if (!lst) { tl = sprintf(buff, "    addi $t%d, $v0, 0\n", ++st); buff = buff + tl; }
            i = 0;
            tl = sprintf(buff, "    addi $sp, $sp, -%d\n", (st + 1) << 2); buff = buff + tl;
            while (i <= st - 2) {
                tl = sprintf(buff, "    sw   $t%d, %d($sp)\n", i, (st - i) << 2);
                buff = buff + tl; ++i;
            }  // save temp stack
            while (i <= st) {
                tl = sprintf(buff, "    sw   $t%d, %d($sp)\n", st + st - i - 1, (st - i) << 2);
                buff = buff + tl; ++i;
            }
            if      (*e == MUL) { tl = sprintf(buff, "    jal  mul\n"); buff = buff + tl; }
            else if (*e == DIV) { tl = sprintf(buff, "    jal  div\n"); buff = buff + tl; }
            else if (*e == MOD) { tl = sprintf(buff, "    jal  mod\n"); buff = buff + tl; }
            i = 0;
            while (i <= st - 2) { tl = sprintf(buff, "    lw   $t%d, %d($sp)\n", i, (st - i) << 2); buff = buff + tl; ++i; }
            tl = sprintf(buff, "    addi $sp, $sp, %d\n", (st + 1) << 2); buff = buff + tl;
            st = st - 2;
            tl = sprintf(buff, "    lw   $ra, 0($sp)\n    addi $sp, $sp, 4\n"); buff = buff + tl;
        }
        else if (*e == LABL) {
            tl = sprintf(buff, "_%.*s_%x:\n", current_func[Hash] & 0x3F, (char*)current_func[Name], (int)e);
            buff = buff + tl;
        }
        else if (*e == CMMT) { tl = sprintf(buff, "## line %d\n", *++e); buff = buff + tl; }
        else { printf("Unknown inst: %d\n", *e); exit(-1); }
        ++e;
    }
}

void stmt()
{
    int *a, *b;

    if (tk == If) {
        *++e = CMMT; *++e = line;
        next();
        if (tk == '(') next(); else { printf("%d: open paren expected\n", line); exit(-1); }
        expr(Assign);
        if (tk == ')') next(); else { printf("%d: close paren expected\n %s", line, p); exit(-1); }
        *++e = BZ; b = ++e;
        stmt();
        if (tk == Else) {
            *b = (int)(e + 3); *++e = JMP; b = ++e; *++e = LABL;
            next();
            stmt();
        }
        *(int*)(*b = (int)++e) = LABL;
    }
    else if (tk == While) {
        *++e = CMMT; *++e = line;
        next();
        *(int*)(a = ++e) = LABL;
        if (tk == '(') next(); else { printf("%d: open paren expected\n", line); exit(-1); }
        expr(Assign);
        if (tk == ')') next(); else { printf("%d: close paren expected\n", line); exit(-1); }
        *++e = BZ; b = ++e;
        stmt();
        *++e = JMP; *++e = (int)a;
        *(int*)(*b = (int)++e) = LABL;
    }
    else if (tk == Return) {
        *++e = CMMT; *++e = line;
        next();
        if (tk != ';') expr(Assign);
        *++e = LEV;
        if (tk == ';') next(); else { printf("%d: semicolon expected\n", line); exit(-1); }
    }
    else if (tk == '{') {
        next();
        while (tk != '}') stmt();
        next();
    }
    else if (tk == ';') {
        next();
    }
    else {
        *++e = CMMT; *++e = line;
        expr(Assign);
        if (tk == ';') next(); else { printf("%d: semicolon expected\n", line); exit(-1); }
    }
}

int main(int argc, char **argv)
{
    int fd, bt, ty, poolsz, size;
    int i; // temps
    int *le;
    int *te;
    char *td, *t;
    char *tb;
    char *output;

    --argc; ++argv;
    if (argc < 1) { printf("usage: c5 -o output file ...\n"); return -1; }

    while (argc && **argv == '-') {
        if ((*argv)[1] == 'o') {
            if (! --argc) { printf("no output file\n"); exit(-1); }
            output = *++argv;
        }
        --argc; ++argv;
    }

    poolsz = 128*1024; // arbitrary size
    if (!(sym = malloc(poolsz))) { printf("could not malloc(%d) symbol area\n", poolsz); return -1; }
    if (!(te = le = e = malloc(poolsz))) { printf("could not malloc(%d) text area\n", poolsz); return -1; }
    if (!(t = td = data = malloc(poolsz))) { printf("could not malloc(%d) data area\n", poolsz); return -1; }
    if (!(tb = buff = malloc(poolsz))) { printf("could not malloc(%d) buffer area\n", poolsz); return -1; }

    memset(sym,  0, poolsz);
    memset(e,    0, poolsz);
    memset(data, 0, poolsz);
    memset(buff, 0, poolsz);

    p = "char else enum if int return sizeof while void ";
    i = Char; while (i <= While) { next(); id[Tk] = i++; } // add keywords to symbol table
    next(); id[Tk] = Char; // handle void type

    if (!(lp = p = malloc(poolsz))) { printf("could not malloc(%d) source area\n", poolsz); return -1; }

    while (argc--) {
        p = lp;
        if ((fd = open(file = *argv++)) <= 0) { printf("could not open(%s)\n", file); return -1; }
        size = file_size(fd);
        if ((i = read(fd, p, 0, size)) <= 0) { printf("read() returned %d\n", i); return -1; }
        p[i] = 0;
        close(fd);

        tl = sprintf(buff, "_%.*s_ref:\n", strchr(file, '.') - file, file); buff = buff + tl;

        // parse declarations
        line = 1;
        next();
        while (tk) {
            bt = INT; // basetype
            if (tk == Int) next();
            else if (tk == Char) { next(); bt = CHAR; }
            else if (tk == Enum) {
                next();
                if (tk != '{') next();
                if (tk == '{') {
                    next();
                    i = 0;
                    while (tk != '}') {
                        if (tk != Id) { printf("%d: bad enum identifier %d\n", line, tk); return -1; }
                        next();
                        if (tk == Assign) {
                            next();
                            if (tk != Num) { printf("%d: bad enum initializer\n", line); return -1; }
                            i = ival;
                            next();
                        }
                        id[Class] = Num; id[Type] = INT; id[Val] = i++;
                        if (tk == ',') next();
                    }
                    next();
                }
            }
            while (tk != ';' && tk != '}') {
                ty = bt;
                while (tk == Mul) { next(); ty = ty + PTR; }
                if (tk != Id) { printf("%d: bad global declaration\n", line); return -1; }
                if (id[Class]) { 
                    printf("%d: duplicate global definition: %.*s\n", line, id[Hash] & 0x3F, (char*)id[Name]);
                    return -1; 
                }
                next();
                id[Type] = ty;
                if (tk == '(') { // function
                    id[Class] = Fun;
                    id[Val] = (int)(e + 1);
                    current_func = id;
                    next(); i = 0;
                    while (tk != ')') {
                        ty = INT;
                        if (tk == Int) next();
                        else if (tk == Char) { next(); ty = CHAR; }
                        while (tk == Mul) { next(); ty = ty + PTR; }
                        if (tk != Id) { printf("%d: bad parameter declaration\n", line); return -1; }
                        if (id[Class] == Loc || id[Class] == Arg) { printf("%d: duplicate parameter definition\n", line); return -1; }
                        id[HClass] = id[Class]; id[Class] = Arg;
                        id[HType]  = id[Type];  id[Type] = ty;
                        id[HVal]   = id[Val];   id[Val] = i++;
                        next();
                        if (tk == ',') next();
                    }
                    next();
                    if (tk == '{') {
                        i = 0;
                        next();
                        tl = sprintf(
                                buff,
                                "\n%.*s:\n"
                                "    addi $sp, $sp, -4\n"
                                "    sw   $fp, 0($sp)\n"
                                "    addi $sp, $sp, -4\n"
                                "    sw   $ra, 0($sp)\n"
                                "    addi $fp, $sp, 0\n"
                                "    jal  _%.*s_start\n"
                                "_%.*s_ref_pos:\n",
                                current_func[Hash] & 0x3F, (char*)current_func[Name],
                                current_func[Hash] & 0x3F, (char*)current_func[Name],
                                current_func[Hash] & 0x3F, (char*)current_func[Name],
                            );
                        buff = buff + tl;
                        tl = sprintf(
                                buff,
                                "_%.*s_module_ref:\n"
                                "    dd   _%.*s_ref\n",
                                current_func[Hash] & 0x3F, (char*)current_func[Name],
                                strchr(file, '.') - file, file
                            );
                        buff = buff + tl;
                        while (tk == Int || tk == Char) {
                            bt = (tk == Int) ? INT : CHAR;
                            next();
                            while (tk != ';') {
                                ty = bt;
                                while (tk == Mul) { next(); ty = ty + PTR; }
                                if (tk != Id) { printf("%d: bad local declaration\n", line); return -1; }
                                if (id[Class] == Loc || id[Class] == Arg) { printf("%d: duplicate local definition\n", line); return -1; }
                                id[HClass] = id[Class]; id[Class] = Loc;
                                id[HType]  = id[Type];  id[Type] = ty;
                                id[HVal]   = id[Val];   id[Val] = i++;
                                next();
                                if (tk == ',') next();
                            }
                            next();
                        }
                        le = e;
                        while (tk != '}') stmt();
                        tl = sprintf(
                                buff,
                                "\n_%.*s_start:\n",
                                current_func[Hash] & 0x3F, (char*)current_func[Name]
                            );
                        buff = buff + tl;
                        if (i) {
                            tl = sprintf(buff, "    addi $sp, $sp, -%d\n", i << 2);
                            buff = buff + tl;
                        }
                        codegen(le + 1, e + 1);
                        tl = sprintf(
                                buff,
                                "\n"
                                "_%.*s_end:\n",
                                current_func[Hash] & 0x3F, (char*)current_func[Name]
                            );
                        buff = buff + tl;
                        if (i) {
                            tl = sprintf(buff, "    addi $sp, $sp, %d\n", i << 2);
                            buff = buff + tl;
                        }
                        tl = sprintf(
                                buff,
                                "    lw   $ra, 0($sp)\n"
                                "    addi $sp, $sp, 4\n"
                                "    lw   $fp, 0($sp)\n"
                                "    addi $sp, $sp, 4\n"
                                "    jr   $ra\n"
                                "\n.global %.*s\n",
                                current_func[Hash] & 0x3F, (char*)current_func[Name]
                            );
                        buff = buff + tl;
                    }
                    else if (tk != ';') { printf("%d: bad function decl\n", line); exit(-1); }
                    else {
                        tl = sprintf(buff, "\n.extern %.*s\n", current_func[Hash] & 0x3F, (char*)current_func[Name]);
                        buff = buff + tl;
                    }
                    id = sym; // unwind symbol table locals
                    while (id[Tk]) {
                        if (id[Class] == Loc || id[Class] == Arg || id[Class] == Ext) {
                            id[Class] = id[HClass];
                            id[Type] = id[HType];
                            id[Val] = id[HVal];
                        }
                        id = id + Idsz;
                    }

                    // output string constants
                    while (t < data) {
                        tl = sprintf(buff, "s%x:\n", (int)t); buff = buff + tl;
                        tl = sprintf(buff, "    string \"");  buff = buff + tl;
                        while (*t) {
                            if (*t == '\n')         { tl = sprintf(buff, "\\n"); buff = buff + tl; }
                            else if (*t == '"')     { tl = sprintf(buff, "\\\""); buff = buff + tl; }
                            else if (*t == '\'')    { tl = sprintf(buff, "\\\'"); buff = buff + tl; }
                            else if (*t == '\\')    { tl = sprintf(buff, "\\\\"); buff = buff + tl; }
                            else                    { tl = sprintf(buff, "%c", *t); buff = buff + tl; }
                            ++t;
                        }
                        tl = sprintf(buff, "\"\n\n"); buff = buff + tl;
                        t = (char*)((int)t + sizeof(int) & -sizeof(int));
                    }
                }
                else {
                    id[Class] = Glo;
                    id[Val] = (int)data;
                    tl = sprintf(buff, "\n%.*s:\n    dd 0\n.global %.*s\n", id[Hash] & 0x3F, (char*)id[Name], id[Hash] & 0x3F, (char*)id[Name]);
                    buff = buff + tl;
                }
                if (tk == ',') next();
            }
            next();
        }
    }

    if ((fd = create(output)) < 0) { printf("open returned %d\n", fd); exit(-1); }
    write(fd, tb, 0, (int)buff - (int)tb);
    close(fd);

    free(tb);
    free(sym);
    free(te);
    free(td);

    return 0;
}
