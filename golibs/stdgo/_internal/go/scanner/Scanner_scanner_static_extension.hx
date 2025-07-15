package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _tok = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _lit = ("" : stdgo.GoString);
        var _nlOffset_220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_219:stdgo.GoString = ("" : stdgo.GoString);
        var _ch_218:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _insertSemi_217:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 4931389i64;
                } else if (__value__ == (4931389i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L792"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nlPos.isValid()) {
                        _gotoNext = 4931422i64;
                    } else {
                        _gotoNext = 4931621i64;
                    };
                } else if (__value__ == (4931422i64)) {
                    {
                        final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nlPos;
                        final __tmp__1 = (57 : stdgo._internal.go.token.Token_token.Token);
                        final __tmp__2 = ("\n" : stdgo.GoString);
                        _pos = @:binopAssign __tmp__0;
                        _tok = @:binopAssign __tmp__1;
                        _lit = @:binopAssign __tmp__2;
                    };
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nlPos = (0 : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L797"
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = 4931621i64;
                } else if (__value__ == (4931621i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L800"
                    _s._skipWhitespace();
                    _pos = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.pos((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset);
                    _insertSemi_217 = false;
                    _gotoNext = 4931742i64;
                } else if (__value__ == (4931742i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L807"
                    {
                        _ch_218 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch;
                        if (stdgo._internal.go.scanner.Scanner__isletter._isLetter(_ch_218)) {
                            _gotoNext = 4931764i64;
                        } else if ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_ch_218) || (_ch_218 == ((46 : stdgo.GoInt32)) && stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((_s._peek() : stdgo.GoInt32)) : Bool) : Bool)) {
                            _gotoNext = 4932108i64;
                        } else {
                            _gotoNext = 4932219i64;
                        };
                    };
                } else if (__value__ == (4931764i64)) {
                    _lit = _s._scanIdentifier()?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L810"
                    if (((_lit.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4931828i64;
                    } else {
                        _gotoNext = 4932059i64;
                    };
                } else if (__value__ == (4931828i64)) {
                    _tok = stdgo._internal.go.token.Token_lookup.lookup(_lit?.__copy__());
                    _gotoNext = 4931927i64;
                } else if (__value__ == (4931927i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L813"
                    {
                        final __value__ = _tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 4931943i64;
                        } else {
                            _gotoNext = 4935396i64;
                        };
                    };
                } else if (__value__ == (4931943i64)) {
                    _insertSemi_217 = true;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932059i64)) {
                    _gotoNext = 4932059i64;
                    _insertSemi_217 = true;
                    _tok = (4 : stdgo._internal.go.token.Token_token.Token);
                    0i64;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932108i64)) {
                    _insertSemi_217 = true;
                    {
                        var __tmp__ = _s._scanNumber();
                        _tok = @:tmpset0 __tmp__._0;
                        _lit = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932219i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L825"
                    _s._next();
                    _gotoNext = 4932265i64;
                } else if (__value__ == (4932265i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L826"
                    {
                        final __value__ = _ch_218;
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 4932279i64;
                        } else if (__value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 4932415i64;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4932630i64;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 4932709i64;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 4932785i64;
                        } else if (__value__ == ((58 : stdgo.GoInt32))) {
                            _gotoNext = 4932867i64;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4932925i64;
                        } else if (__value__ == ((44 : stdgo.GoInt32))) {
                            _gotoNext = 4933138i64;
                        } else if (__value__ == ((59 : stdgo.GoInt32))) {
                            _gotoNext = 4933171i64;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 4933221i64;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4933255i64;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 4933310i64;
                        } else if (__value__ == ((93 : stdgo.GoInt32))) {
                            _gotoNext = 4933344i64;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 4933399i64;
                        } else if (__value__ == ((125 : stdgo.GoInt32))) {
                            _gotoNext = 4933433i64;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 4933488i64;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 4933616i64;
                        } else if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 4933744i64;
                        } else if (__value__ == ((47 : stdgo.GoInt32))) {
                            _gotoNext = 4933804i64;
                        } else if (__value__ == ((37 : stdgo.GoInt32))) {
                            _gotoNext = 4934376i64;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 4934436i64;
                        } else if (__value__ == ((60 : stdgo.GoInt32))) {
                            _gotoNext = 4934496i64;
                        } else if (__value__ == ((62 : stdgo.GoInt32))) {
                            _gotoNext = 4934656i64;
                        } else if (__value__ == ((61 : stdgo.GoInt32))) {
                            _gotoNext = 4934743i64;
                        } else if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 4934799i64;
                        } else if (__value__ == ((38 : stdgo.GoInt32))) {
                            _gotoNext = 4934852i64;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 4935037i64;
                        } else if (__value__ == ((126 : stdgo.GoInt32))) {
                            _gotoNext = 4935111i64;
                        } else {
                            _gotoNext = 4935144i64;
                        };
                    };
                } else if (__value__ == (4932279i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L828"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi) {
                        _gotoNext = 4932308i64;
                    } else {
                        _gotoNext = 4932397i64;
                    };
                } else if (__value__ == (4932308i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi = false;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L830"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4932397i64;
                } else if (__value__ == (4932397i64)) {
                    _tok = (1 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932415i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi = false;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L838"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932630i64)) {
                    _insertSemi_217 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanString()?.__copy__();
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932709i64)) {
                    _insertSemi_217 = true;
                    _tok = (8 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanRune()?.__copy__();
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932785i64)) {
                    _insertSemi_217 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _s._scanRawString()?.__copy__();
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932867i64)) {
                    _tok = _s._switch2((58 : stdgo._internal.go.token.Token_token.Token), (47 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4932925i64)) {
                    _tok = (53 : stdgo._internal.go.token.Token_token.Token);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L856"
                    if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (46 : stdgo.GoInt32)) && (_s._peek() == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4933058i64;
                    } else {
                        _gotoNext = 4935396i64;
                    };
                } else if (__value__ == (4933058i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L857"
                    _s._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L858"
                    _s._next();
                    _tok = (48 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933138i64)) {
                    _tok = (52 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933171i64)) {
                    _tok = (57 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (";" : stdgo.GoString);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933221i64)) {
                    _tok = (49 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933255i64)) {
                    _insertSemi_217 = true;
                    _tok = (54 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933310i64)) {
                    _tok = (50 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933344i64)) {
                    _insertSemi_217 = true;
                    _tok = (55 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933399i64)) {
                    _tok = (51 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933433i64)) {
                    _insertSemi_217 = true;
                    _tok = (56 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933488i64)) {
                    _tok = _s._switch3((12 : stdgo._internal.go.token.Token_token.Token), (23 : stdgo._internal.go.token.Token_token.Token), (43 : stdgo.GoInt32), (37 : stdgo._internal.go.token.Token_token.Token));
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L883"
                    if (_tok == ((37 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4933585i64;
                    } else {
                        _gotoNext = 4935396i64;
                    };
                } else if (__value__ == (4933585i64)) {
                    _insertSemi_217 = true;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933616i64)) {
                    _tok = _s._switch3((13 : stdgo._internal.go.token.Token_token.Token), (24 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo.GoInt32), (38 : stdgo._internal.go.token.Token_token.Token));
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L888"
                    if (_tok == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4933713i64;
                    } else {
                        _gotoNext = 4935396i64;
                    };
                } else if (__value__ == (4933713i64)) {
                    _insertSemi_217 = true;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933744i64)) {
                    _tok = _s._switch2((14 : stdgo._internal.go.token.Token_token.Token), (25 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4933804i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L894"
                    if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (47 : stdgo.GoInt32)) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (42 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4933847i64;
                    } else {
                        _gotoNext = 4934302i64;
                    };
                } else if (__value__ == (4933847i64)) {
                    {
                        var __tmp__ = _s._scanComment();
                        _comment_219 = @:tmpset0 __tmp__._0?.__copy__();
                        _nlOffset_220 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L897"
                    if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi && (_nlOffset_220 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4933942i64;
                    } else {
                        _gotoNext = 4934102i64;
                    };
                } else if (__value__ == (4933942i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nlPos = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.pos(_nlOffset_220);
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi = false;
                    _gotoNext = 4934173i64;
                } else if (__value__ == (4934102i64)) {
                    _gotoNext = 4934102i64;
                    _insertSemi_217 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi;
                    0i64;
                    _gotoNext = 4934173i64;
                } else if (__value__ == (4934173i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L905"
                    if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4934201i64;
                    } else {
                        _gotoNext = 4934254i64;
                    };
                } else if (__value__ == (4934201i64)) {
                    _gotoNext = 4931389i64;
                } else if (__value__ == (4934254i64)) {
                    _tok = (2 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _comment_219?.__copy__();
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934302i64)) {
                    _gotoNext = 4934302i64;
                    _tok = _s._switch2((15 : stdgo._internal.go.token.Token_token.Token), (26 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934376i64)) {
                    _tok = _s._switch2((16 : stdgo._internal.go.token.Token_token.Token), (27 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934436i64)) {
                    _tok = _s._switch2((19 : stdgo._internal.go.token.Token_token.Token), (30 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934496i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L920"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 4934524i64;
                    } else {
                        _gotoNext = 4934571i64;
                    };
                } else if (__value__ == (4934524i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L921"
                    _s._next();
                    _tok = (36 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934571i64)) {
                    _gotoNext = 4934571i64;
                    _tok = _s._switch4((40 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo._internal.go.token.Token_token.Token), (60 : stdgo.GoInt32), (20 : stdgo._internal.go.token.Token_token.Token), (31 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934656i64)) {
                    _tok = _s._switch4((41 : stdgo._internal.go.token.Token_token.Token), (46 : stdgo._internal.go.token.Token_token.Token), (62 : stdgo.GoInt32), (21 : stdgo._internal.go.token.Token_token.Token), (32 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934743i64)) {
                    _tok = _s._switch2((42 : stdgo._internal.go.token.Token_token.Token), (39 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934799i64)) {
                    _tok = _s._switch2((43 : stdgo._internal.go.token.Token_token.Token), (44 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934852i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L933"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((94 : stdgo.GoInt32))) {
                        _gotoNext = 4934880i64;
                    } else {
                        _gotoNext = 4934962i64;
                    };
                } else if (__value__ == (4934880i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L934"
                    _s._next();
                    _tok = _s._switch2((22 : stdgo._internal.go.token.Token_token.Token), (33 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4934962i64)) {
                    _gotoNext = 4934962i64;
                    _tok = _s._switch3((17 : stdgo._internal.go.token.Token_token.Token), (28 : stdgo._internal.go.token.Token_token.Token), (38 : stdgo.GoInt32), (34 : stdgo._internal.go.token.Token_token.Token));
                    0i64;
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4935037i64)) {
                    _tok = _s._switch3((18 : stdgo._internal.go.token.Token_token.Token), (29 : stdgo._internal.go.token.Token_token.Token), (124 : stdgo.GoInt32), (35 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4935111i64)) {
                    _tok = (88 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4935144i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L945"
                    if (_ch_218 != ((65279 : stdgo.GoInt32))) {
                        _gotoNext = 4935219i64;
                    } else {
                        _gotoNext = 4935291i64;
                    };
                } else if (__value__ == (4935219i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L946"
                    _s._errorf((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.offset(_pos), ("illegal character %#U" : stdgo.GoString), new stdgo.AnyInterface(_ch_218, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                    _gotoNext = 4935291i64;
                } else if (__value__ == (4935291i64)) {
                    _insertSemi_217 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi;
                    _tok = (0 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (_ch_218 : stdgo.GoString)?.__copy__();
                    _gotoNext = 4935396i64;
                } else if (__value__ == (4935396i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L953"
                    if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode & (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4935427i64;
                    } else {
                        _gotoNext = 4935462i64;
                    };
                } else if (__value__ == (4935427i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi = _insertSemi_217;
                    _gotoNext = 4935462i64;
                } else if (__value__ == (4935462i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L957"
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _switch4( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token, _tok3:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L745"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((61 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L746"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L747"
            return _tok1;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L749"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (_ch2)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L750"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L751"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((61 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L752"
                _s._next();
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L753"
                return _tok3;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L755"
            return _tok2;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L757"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch3( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L733"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((61 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L734"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L735"
            return _tok1;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L737"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (_ch2)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L738"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L739"
            return _tok2;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L741"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch2( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L725"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((61 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L726"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L727"
            return _tok1;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L729"
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _skipWhitespace( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L713"
        while (((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((32 : stdgo.GoInt32)) || (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((9 : stdgo.GoInt32)) : Bool) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((10 : stdgo.GoInt32)) && !(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi : Bool) : Bool) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (13 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L714"
            _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _scanRawString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _hasCR = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L689"
        while (true) {
            var _ch = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L691"
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L692"
                _s._error(_offs, ("raw string literal not terminated" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L693"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L695"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L696"
            if (_ch == ((96 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L697"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L699"
            if (_ch == ((13 : stdgo.GoInt32))) {
                _hasCR = true;
            };
        };
        var _lit = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L705"
        if (_hasCR) {
            _lit = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit, false);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L709"
        return (_lit : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L649"
        while (true) {
            var _ch = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L651"
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L652"
                _s._error(_offs, ("string literal not terminated" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L653"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L655"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L656"
            if (_ch == ((34 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L657"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L659"
            if (_ch == ((92 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L660"
                _s._scanEscape((34 : stdgo.GoInt32));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L664"
        return (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _valid = @:assignType (true : Bool);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L615"
        while (true) {
            var _ch = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L617"
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L619"
                if (_valid) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L620"
                    _s._error(_offs, ("rune literal not terminated" : stdgo.GoString));
                    _valid = false;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L623"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L625"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L626"
            if (_ch == ((39 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L627"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L629"
            _n++;
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L630"
            if (_ch == ((92 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L631"
                if (!_s._scanEscape((39 : stdgo.GoInt32))) {
                    _valid = false;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L638"
        if ((_valid && (_n != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L639"
            _s._error(_offs, ("illegal rune literal" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L642"
        return (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanEscape( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _max:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L561"
        {
            final __value__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L563"
                _s._next();
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L564"
                return true;
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                {
                    final __tmp__0 = (3 : stdgo.GoInt);
                    final __tmp__1 = (8u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L568"
                _s._next();
                {
                    final __tmp__0 = (2 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L571"
                _s._next();
                {
                    final __tmp__0 = (4 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L574"
                _s._next();
                {
                    final __tmp__0 = (8 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else {
                var _msg = @:assignType (("unknown escape sequence" : stdgo.GoString) : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L578"
                if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L581"
                _s._error(_offs, _msg?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L582"
                return false;
            };
        };
        var _x:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L586"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _d = @:assignType (stdgo._internal.go.scanner.Scanner__digitval._digitVal((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L588"
            if ((_d >= _base : Bool)) {
                var _msg = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character %#U in escape sequence" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L590"
                if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L593"
                _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, _msg?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L594"
                return false;
            };
            _x = ((_x * _base : stdgo.GoUInt32) + _d : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L597"
            _s._next();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L598"
            _n--;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L601"
        if (((_x > _max : Bool) || (((55296u32 : stdgo.GoUInt32) <= _x : Bool) && (_x < (57344u32 : stdgo.GoUInt32) : Bool) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L602"
            _s._error(_offs, ("escape sequence is invalid Unicode code point" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L603"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L606"
        return true;
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt);
        var _tok = @:assignType (0 : stdgo._internal.go.token.Token_token.Token);
        var _base = @:assignType (10 : stdgo.GoInt);
        var _prefix = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _digsep = @:assignType (0 : stdgo.GoInt);
        var _invalid = @:assignType (-1 : stdgo.GoInt);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L423"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch != ((46 : stdgo.GoInt32))) {
            _tok = (5 : stdgo._internal.go.token.Token_token.Token);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L425"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((48 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L426"
                _s._next();
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L427"
                {
                    final __value__ = stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L429"
                        _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L432"
                        _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L435"
                        _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            _digsep = (_digsep | (_s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L446"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((46 : stdgo.GoInt32))) {
            _tok = (6 : stdgo._internal.go.token.Token_token.Token);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L448"
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L449"
                _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, (("invalid radix point in " : stdgo.GoString) + stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L451"
            _s._next();
            _digsep = (_digsep | (_s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L455"
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L456"
            _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, (stdgo._internal.go.scanner.Scanner__litname._litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L460"
        {
            var _e = @:assignType (stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) : stdgo.GoInt32);
            if (((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L461"
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L463"
                    _s._errorf((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("%q exponent requires decimal mantissa" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L465"
                    _s._errorf((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("%q exponent requires hexadecimal mantissa" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L467"
                _s._next();
                _tok = (6 : stdgo._internal.go.token.Token_token.Token);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L469"
                if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (43 : stdgo.GoInt32)) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (45 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L470"
                    _s._next();
                };
                var _ds = @:assignType (_s._digits((10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.GoInt);
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L474"
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L475"
                    _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L478"
                _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L482"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((105 : stdgo.GoInt32))) {
            _tok = (7 : stdgo._internal.go.token.Token_token.Token);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L484"
            _s._next();
        };
        var _lit = @:assignType ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L488"
        if (((_tok == (5 : stdgo._internal.go.token.Token_token.Token)) && (_invalid >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L489"
            _s._errorf(_invalid, ("invalid digit %q in %s" : stdgo.GoString), new stdgo.AnyInterface(_lit[(_invalid - _offs : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(stdgo._internal.go.scanner.Scanner__litname._litname(_prefix), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L491"
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L492"
            {
                var _i = @:assignType (stdgo._internal.go.scanner.Scanner__invalidsep._invalidSep(_lit?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L493"
                    _s._error((_offs + _i : stdgo.GoInt), ("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L497"
        return { _0 : _tok, _1 : _lit?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _digits( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _digsep = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L388"
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = @:assignType (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L390"
            while ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = @:assignType (1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L392"
                if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch >= _max : Bool) && (_invalid.value < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _invalid.value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L398"
                _s._next();
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L401"
            while ((stdgo._internal.go.scanner.Scanner__ishex._isHex((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) || ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = @:assignType (1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L403"
                if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L407"
                _s._next();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L410"
        return _digsep;
    }
    @:keep
    @:tdfield
    static public function _scanIdentifier( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs_214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_216:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _rdOffset_215:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _offs_214 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L332"
                    if ((0i64 : stdgo.GoInt) < (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4921490i64;
                    } else {
                        _gotoNext = 4921494i64;
                    };
                } else if (__value__ == (4920571i64)) {
                    _b_216 = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(_rdOffset_215 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L333"
                    if (((((((97 : stdgo.GoUInt8) <= _b_216 : Bool) && (_b_216 <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b_216 : Bool) && (_b_216 <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b_216 == ((95 : stdgo.GoUInt8)) : Bool) || (((48 : stdgo.GoUInt8) <= _b_216 : Bool) && (_b_216 <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 4920659i64;
                    } else {
                        _gotoNext = 4920751i64;
                    };
                } else if (__value__ == (4920659i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L332"
                    _rdOffset_215++;
                    _gotoNext = 4921491i64;
                } else if (__value__ == (4920751i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset + (_rdOffset_215) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L338"
                    if ((((0 : stdgo.GoUInt8) < _b_216 : Bool) && (_b_216 < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 4920806i64;
                    } else {
                        _gotoNext = 4921413i64;
                    };
                } else if (__value__ == (4920806i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (_b_216 : stdgo.GoInt32);
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L347"
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset++;
                    _gotoNext = 4921554i64;
                } else if (__value__ == (4921413i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L353"
                    _s._next();
                    0i64;
                    _gotoNext = 4921424i64;
                } else if (__value__ == (4921424i64)) {
                    //"file://#L0"
                    if ((stdgo._internal.go.scanner.Scanner__isletter._isLetter((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) || stdgo._internal.go.scanner.Scanner__isdigit._isDigit((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch) : Bool)) {
                        _gotoNext = 4921460i64;
                    } else {
                        _gotoNext = 4921480i64;
                    };
                } else if (__value__ == (4921460i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L355"
                    _s._next();
                    _gotoNext = 4921424i64;
                } else if (__value__ == (4921480i64)) {
                    _gotoNext = 4921554i64;
                } else if (__value__ == (4921490i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(0i64 : stdgo.GoInt)];
                        _rdOffset_215 = @:binopAssign __tmp__0;
                        _b_216 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4921491i64;
                } else if (__value__ == (4921491i64)) {
                    //"file://#L0"
                    if (_rdOffset_215 < (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4920571i64;
                    } else {
                        _gotoNext = 4921494i64;
                    };
                } else if (__value__ == (4921494i64)) {
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length);
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length);
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (-1 : stdgo.GoInt32);
                    _gotoNext = 4921554i64;
                } else if (__value__ == (4921554i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L364"
                    return (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs_214, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _updateLineInfo( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _next:stdgo.GoInt, _offs:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L238"
        if (_text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            _text = (_text.__slice__(0, ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _text = (_text.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offs = (_offs + ((7 : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits(_text), _i:stdgo.GoInt = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L245"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L246"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L250"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L252"
            _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L253"
            return;
        };
        {};
        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _col:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _i2:stdgo.GoInt = __tmp__._0, _n2:stdgo.GoInt = __tmp__._1, _ok2:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L262"
        if (_ok2) {
            {
                final __tmp__0 = _i2;
                final __tmp__1 = _i;
                _i = @:binopAssign __tmp__0;
                _i2 = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _n2;
                final __tmp__1 = _n;
                _line = @:binopAssign __tmp__0;
                _col = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L266"
            if (((_col == (0 : stdgo.GoInt)) || (_col > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L267"
                _s._error((_offs + _i2 : stdgo.GoInt), (("invalid column number: " : stdgo.GoString) + ((_text.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L268"
                return;
            };
            _text = (_text.__slice__(0, (_i2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _line = _n;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L276"
        if (((_line == (0 : stdgo.GoInt)) || (_line > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L277"
            _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L278"
            return;
        };
        var _filename = @:assignType (((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L284"
        if (((_filename == (stdgo.Go.str() : stdgo.GoString)) && _ok2 : Bool)) {
            _filename = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.position((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.pos(_offs)).filename?.__copy__();
        } else if (_filename != ((stdgo.Go.str() : stdgo.GoString))) {
            _filename = stdgo._internal.path.filepath.Filepath_clean.clean(_filename?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L291"
            if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_filename?.__copy__())) {
                _filename = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dir?.__copy__(), _filename?.__copy__())?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L296"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.addLineColumnInfo(_next, _filename?.__copy__(), _line, _col);
    }
    @:keep
    @:tdfield
    static public function _scanComment( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _lit_213:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ch_212:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nlOffset_211:stdgo.GoInt = (0 : stdgo.GoInt);
        var _numCR_210:stdgo.GoInt = (0 : stdgo.GoInt);
        var _next_209:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_208:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _offs_208 = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _next_209 = (-1 : stdgo.GoInt);
                    _numCR_210 = (0 : stdgo.GoInt);
                    _nlOffset_211 = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L168"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((47 : stdgo.GoInt32))) {
                        _gotoNext = 4916034i64;
                    } else {
                        _gotoNext = 4916377i64;
                    };
                } else if (__value__ == (4916034i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L171"
                    _s._next();
                    0i64;
                    _gotoNext = 4916128i64;
                } else if (__value__ == (4916128i64)) {
                    //"file://#L0"
                    if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch != (10 : stdgo.GoInt32)) && ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4916158i64;
                    } else {
                        _gotoNext = 4916289i64;
                    };
                } else if (__value__ == (4916158i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L173"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4916179i64;
                    } else {
                        _gotoNext = 4916201i64;
                    };
                } else if (__value__ == (4916179i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L174"
                    _numCR_210++;
                    _gotoNext = 4916201i64;
                } else if (__value__ == (4916201i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L176"
                    _s._next();
                    _gotoNext = 4916128i64;
                } else if (__value__ == (4916289i64)) {
                    _next_209 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L180"
                    if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 4916323i64;
                    } else {
                        _gotoNext = 4916341i64;
                    };
                } else if (__value__ == (4916323i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L181"
                    _next_209++;
                    _gotoNext = 4916341i64;
                } else if (__value__ == (4916341i64)) {
                    _gotoNext = 4916651i64;
                } else if (__value__ == (4916377i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L187"
                    _s._next();
                    0i64;
                    _gotoNext = 4916387i64;
                } else if (__value__ == (4916387i64)) {
                    //"file://#L0"
                    if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch >= (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4916401i64;
                    } else {
                        _gotoNext = 4916610i64;
                    };
                } else if (__value__ == (4916401i64)) {
                    _ch_212 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch;
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L190"
                    if (_ch_212 == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4916432i64;
                    } else if (((_ch_212 == (10 : stdgo.GoInt32)) && (_nlOffset_211 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4916485i64;
                    } else {
                        _gotoNext = 4916516i64;
                    };
                } else if (__value__ == (4916432i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L191"
                    _numCR_210++;
                    _gotoNext = 4916516i64;
                } else if (__value__ == (4916485i64)) {
                    _nlOffset_211 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                    _gotoNext = 4916516i64;
                } else if (__value__ == (4916516i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L195"
                    _s._next();
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L196"
                    if (((_ch_212 == (42 : stdgo.GoInt32)) && ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == (47 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4916555i64;
                    } else {
                        _gotoNext = 4916387i64;
                    };
                } else if (__value__ == (4916555i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L197"
                    _s._next();
                    _next_209 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                    _gotoNext = 4916651i64;
                } else if (__value__ == (4916610i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L203"
                    _s._error(_offs_208, ("comment not terminated" : stdgo.GoString));
                    _gotoNext = 4916651i64;
                } else if (__value__ == (4916651i64)) {
                    _lit_213 = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(_offs_208, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L213"
                    if (((((_numCR_210 > (0 : stdgo.GoInt) : Bool) && ((_lit_213.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && _lit_213[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_lit_213[((_lit_213.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4917014i64;
                    } else {
                        _gotoNext = 4917158i64;
                    };
                } else if (__value__ == (4917014i64)) {
                    _lit_213 = (_lit_213.__slice__(0, ((_lit_213.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L215"
                    _numCR_210--;
                    _gotoNext = 4917158i64;
                } else if (__value__ == (4917158i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L220"
                    if ((((_next_209 >= (0 : stdgo.GoInt) : Bool) && (((_lit_213[(1 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) || (_offs_208 == (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineOffset) : Bool)) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((_lit_213.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.scanner.Scanner__prefix._prefix) : Bool)) {
                        _gotoNext = 4917278i64;
                    } else {
                        _gotoNext = 4917321i64;
                    };
                } else if (__value__ == (4917278i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L221"
                    _s._updateLineInfo(_next_209, _offs_208, _lit_213);
                    _gotoNext = 4917321i64;
                } else if (__value__ == (4917321i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L224"
                    if ((_numCR_210 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4917334i64;
                    } else {
                        _gotoNext = 4917377i64;
                    };
                } else if (__value__ == (4917334i64)) {
                    _lit_213 = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit_213, _lit_213[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)));
                    _gotoNext = 4917377i64;
                } else if (__value__ == (4917377i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L228"
                    return { _0 : (_lit_213 : stdgo.GoString)?.__copy__(), _1 : _nlOffset_211 };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L155"
        _s._error(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L148"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L149"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.position((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.pos(_offs))?.__copy__(), _msg?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L151"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errorCount++;
    }
    @:keep
    @:tdfield
    static public function init( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _src:stdgo.Slice<stdgo.GoUInt8>, _err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L125"
        if (_file.size() != ((_src.length))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L126"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file size (%d) does not match src len (%d)" : stdgo.GoString), new stdgo.AnyInterface(_file.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_src.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file = _file;
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_file.name()?.__copy__());
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dir = @:tmpset0 __tmp__._0?.__copy__();
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src = _src;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode = _mode;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (32 : stdgo.GoInt32);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._insertSemi = false;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errorCount = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L141"
        _s._next();
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L142"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((65279 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L143"
            _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoUInt8 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L94"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L95"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L97"
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _next( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L60"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset < ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length) : Bool)) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset;
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L62"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineOffset = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L64"
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.addLine((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset);
            };
            var __0 = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (1 : stdgo.GoInt);
var _w = __1, _r = __0;
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L67"
            if (_r == ((0 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L69"
                _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("illegal character NUL" : stdgo.GoString));
            } else if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L73"
                if (((_r == (65533 : stdgo.GoInt32)) && (_w == (1 : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L74"
                    _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("illegal UTF-8 encoding" : stdgo.GoString));
                } else if (((_r == (65279 : stdgo.GoInt32)) && ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L76"
                    _s._error((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset, ("illegal byte order mark" : stdgo.GoString));
                };
            };
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdOffset + (_w) : stdgo.GoInt);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = _r;
        } else {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length);
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L83"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lineOffset = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L85"
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._file.addLine((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset);
            };
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch = (-1 : stdgo.GoInt32);
        };
    }
}
