#!/usr/bin/nodejs

process.stdin.setEncoding('utf-8');

var content = '';

var SymbolTable = (function () {
    var FuncSymbol = function () {
        this.parameter = [];
        this.local_var = [];
        this.tmp_var = [];
    };

    FuncSymbol.prototype.createParameter = function (name) {
        this.parameter.push(name);
    };

    FuncSymbol.prototype.createLocalVarible = function (name) {
        this.local_var.push(name);
    };

    FuncSymbol.prototype.createTempVariable = function (name) {
        this.tmp_var.push(name);
    };

    FuncSymbol.prototype.findVariable = function (name) {
        var index;

        switch (name) {
            case 'retval':
                return {
                    type: 'fixed',
                    reg: '$v0'
                };
            case 'zero':
                return {
                    type: 'fixed',
                    reg: '$zero'
                };
        }

        index = this.parameter.indexOf(name);
        if (index !== -1) {
            return {
                type: 'parameter',
                index: index
            };
        }

        index = this.local_var.indexOf(name);
        if (index !== -1) {
            return {
                type: 'local',
                index: index
            };
        }

        index = this.tmp_var.indexOf(name);
        if (index !== -1) {
            return {
                type: 'temp',
                index: index
            };
        }

        return null;
    };

    var SymbolTable = function () {
        this._func_table = {};
        this._global = [];
    };

    SymbolTable.prototype.createFunction = function (func) {
        if (this._func_table.hasOwnProperty(func)) { return; }
        this._func_table[func] = new FuncSymbol();
    };

    SymbolTable.prototype.createLocalVarible = function (func, name) {
        if (!this._func_table.hasOwnProperty(func)) { return; }
        this._func_table[func].createLocalVarible(name);
    };

    SymbolTable.prototype.createParameter = function (func, name) {
        if (!this._func_table.hasOwnProperty(func)) { return; }
        this._func_table[func].createParameter(name);
    };

    SymbolTable.prototype.createTempVariable = function (func, name) {
        if (!this._func_table.hasOwnProperty(func)) { return; }
        this._func_table[func].createTempVariable(name);
    };

    SymbolTable.prototype.createGlobalVariable = function (name) {
        if (this._global.indexOf(name) !== -1) { return; }
        this._global.push(name);
    };

    SymbolTable.prototype.findVariable = function (func, name) {
        if (func && this._func_table.hasOwnProperty(func)) {
            var ret = this._func_table[func].findVariable(name);
            if (ret) { return ret; }
        }
        var index = this._global.indexOf(name);
        if (index !== -1) {
            return {
                type: 'global',
                index: index
            };
        }
        return null;
    };

    SymbolTable.prototype.findFunction = function (func) {
        return this._func_table[func];
    };

    return SymbolTable;

})();

process.stdin.on('readable', function () {
    var chunk = process.stdin.read();
    if (chunk !== null) {
        content += chunk;
    }
});

process.stdin.on('end', function () {
    var lines = content.split('\n');

    var sym_table = new SymbolTable();
    var current_func = null;

    // first pass, gather infomation about the symbols
    lines.forEach(function (line) {
        var direct;
        if (line.match(/^\s*@/)) {
            direct = line.replace(/^\s*@(.*?)\s*$/, '$1').split(/\s+/g);
        }

        if (direct) {
            switch (direct[0]) {
                case 'global':
                    if (direct.length != 2) {
                        globalError('Invalid @global: ' + line);
                    }
                    if (current_func) {
                        globalError('@global MUST be outside functions: ' + line);
                    }
                    sym_table.createGlobalVariable(direct[1]);
                    break;
                case 'def':
                    if (current_func) {
                        globalError('Define func inside func: ' + current_func);
                    }
                    if (direct.length != 2) {
                        globalError('Invalid @def: ' + line);
                    }
                    sym_table.createFunction(direct[1]);
                    current_func = direct[1];
                    break;
                case 'enddef':
                    current_func = null;
                    break;
                case 'local':
                    if (direct.length != 2) {
                        globalError('Invalid @local: ' + line);
                    }
                    if (!current_func) {
                        globalError('@local MUST be inside functions: ' + line);
                    }
                    sym_table.createLocalVarible(current_func, direct[1]);
                    break;
                case 'param':
                    if (direct.length != 2) {
                        globalError('Invalid @param: ' + line);
                    }
                    if (!current_func) {
                        globalError('@param MUST be inside functions: ' + line);
                    }
                    sym_table.createParameter(current_func, direct[1]);
                    break;
                case 'call':
                    break;
                case 'return':
                    break;
                default:
                    globalError('Unknown direct: ' + direct[0]);
                    break;
            }
        }
        else {
            var uses = line.match(/@[&]?[-_a-zA-Z0-9]+/g);
            if (uses) {
                uses.forEach(function (name) {
                    name = (name[1] === '&' ? name.substr(2) : name.substr(1));  // emit the leading @ and &
                    var sym = sym_table.findVariable(current_func, name);
                    if (!sym && current_func) {
                        sym_table.createTempVariable(current_func, name);
                    }
                });
            }
        }
    });

    var output_buf = [];

    // code generating
    lines.forEach(function (line) {
        var direct;
        if (line.match(/^\s*@/)) {
            direct = line.replace(/^\s*@([^#]*?)(\s*|#.*)$/, '$1').split(/\s+/g);
        }

        if (direct) {
            switch (direct[0]) {
                case 'global':
                    createLabel(direct[1]);
                    break;
                case 'def':
                    current_func = direct[1];
                    createLabel(direct[1]);
                    funcPrepareStack();
                    break;
                case 'enddef':
                    NewLine();
                    createLabel('_' + current_func + '_end')
                    funcClearStack();
                    JR('$ra');
                    NewLine();
                    current_func = null;
                    break;
                case 'local':
                    break;
                case 'param':
                    break;
                case 'call':
                    if (direct.length < 2) {
                        globalError('Invalid @call: ' + line);
                    }
                    var func = sym_table.findFunction(direct[1]);
                    if (!func) {
                        globalError('Function not found: ' + direct[1]);
                    }
                    if (direct.length != func.parameter.length + 2) {
                        globalWarning('Param number not match: ' + line);
                    }
                    funcCall(direct.slice(1));
                    break;
                case 'return':
                    funcReturn();
                    break;
                default:
                    globalError('Unknown direct: ' + direct[0]);
                    break;
            }
        }
        else {
            var at_used = false;
            line = line.replace(/@[&]?[-_a-zA-Z0-9]+/g, function (item) {
                var ref = item[1] === '&';
                var name = ref ? item.substr(2) : item.substr(1);
                var symbol = sym_table.findVariable(current_func, name);

                if (!symbol) {
                    globalError('Variable not found: ' + item);
                }
                if (ref) {
                    switch (symbol.type) {
                        case 'global':
                            return name + '($gp)';
                        case 'local':
                        case 'temp':
                        case 'fixed':
                            globalError('Local & Temp & FixedReg variable not reference: ' + item);
                        case 'parameter':
                            return (symbol.index * 4 + 8) + '($fp)';
                    }
                }
                else {
                    switch (symbol.type) {
                        case 'global':
                            if (at_used) {
                                globalError('Reg $at is used: ' + item);
                            }
                            at_used = true;
                            Lw('$at', name, '$gp');
                            return '$at';
                        case 'local':
                            return '$s' + symbol.index;
                        case 'temp':
                            return '$t' + symbol.index;
                        case 'parameter':
                            if (symbol.index > 3) {
                                if (at_used) {
                                    globalError('Reg $at is used: ' + item);
                                }
                                at_used = true;
                                Lw('$at', (symbol.index * 4 + 8), '$fp');
                                return '$at';
                            }
                            else {
                                Lw('$a' + symbol.index, (symbol.index * 4 + 8), '$fp');
                                return '$a' + symbol.index;
                            }
                            break;
                        case 'fixed':
                            return symbol.reg;
                    }
                }
            });

            output_buf.push(line);
        }
    });

    output_buf.forEach(function (line) {
        console.log(line);
    });

    function createLabel(label) {
        Label(label);
    }

    function funcReturn() {
        J('_' + current_func + '_end');
    }

    function funcCall(direct) {
        var func = direct.shift();
        direct.reverse().forEach(function (item) {
            if (item[0] === '@') {
                var symbol = sym_table.findVariable(current_func, item.substr(1));
                if (!symbol) {
                    globalError('No symbol found: ' + item);
                }
                var register;
                switch (symbol.type) {
                    case 'global':
                        if (item[1] === '&') {
                            globalError('Invalid global variable reference: ' + item);
                        }
                        Lw('$at', item.substr(1), '$gp');
                        register = '$at';
                        break;
                    case 'local':
                        register = '$s' + symbol.index;
                        break;
                    case 'temp':
                        register = '$t' + symbol.index;
                        break;
                    case 'parameter':
                        if (symbol.index > 3) {
                            Lw('$at', symbol.index * 4 + 8, '$fp');
                            register = '$at';
                        }
                        else {
                            Lw('$a' + symbol.index, symbol.index * 4 + 8, '$fp');
                            register = '$a' + symbol.index;
                        }
                        break;
                    case 'fixed':
                        register = symbol.reg;
                        break;
                }
                Push(register);
            }
            else {
                Push(item);
            }
        });
        JAL(func);
        if (direct.length) {
            RestoreStack(direct.length * 4);
        }
    }

    function funcPrepareStack() {
        var func = sym_table.findFunction(current_func);
        if (func.local_var.length > 8) {
            globalError('Too many local variables in function ' + current_func);
        }
        if (func.tmp_var.length > 10) {
            globalError('Too many temp variables in function ' + current_func);
        }

        Push('$fp');
        Push('$ra');
        Move('$fp', '$sp');

        func.local_var.forEach(function (item, index) {
            Push('$s' + index); // save the $sX
        });
    }

    function funcClearStack() {
        var func = sym_table.findFunction(current_func);
        for (var i = func.local_var.length - 1; i >= 0; --i) {
            Pop('$s' + i);      // restore the $sX
        }
        Pop('$ra');
        Pop('$fp');
    }

    function Label(label) {
        output_buf.push(label + ':');
    }

    function Push(reg) {
        output_buf.push('    addi $sp, $sp, -4');
        output_buf.push('    sw ' + reg + ', 0($sp)');
    }

    function Pop(reg) {
        output_buf.push('    lw ' + reg + ', 0($sp)');
        output_buf.push('    addi $sp, $sp, 4');
    }

    function ReserveStack(size) {
        output_buf.push('    addi $sp, $sp, ' + (-size));
    }

    function RestoreStack(size) {
        output_buf.push('    addi $sp, $sp, ' + size);
    }

    function Move(dest, src) {
        output_buf.push('    addi ' + dest + ', ' + src + ', 0');
    }

    function NewLine() {
        output_buf.push('');
    }

    function Lw(dest, offset, base) {
        output_buf.push('    lw ' + dest + ', ' + offset + '(' + base + ')');
    }

    function JR(dest) {
        output_buf.push('    jr ' + dest);
    }

    function J(label) {
        output_buf.push('    j ' + label);
    }

    function JAL(label) {
        output_buf.push('    jal ' + label);
    }
});

function globalError(text) {
    console.error(text);
    process.exit(-1);
}

function globalWarning(text) {
    console.error('Warnning: ' + text);
}
