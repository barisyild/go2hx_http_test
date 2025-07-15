package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _writeRegexp(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L117"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                    if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L121"
                        _b.writeString(("[^\\x00-\\x{10FFFF}]" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L123"
                        _b.writeString(("(?:)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L125"
                        if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L126"
                            _b.writeString(("(?i:" : stdgo.GoString));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L128"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune != null) for (__1 => _r in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L129"
                            stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _r, false);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L131"
                        if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L132"
                            _b.writeString((")" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L135"
                        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L136"
                            _b.writeString(("[invalid char class]" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L137"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L139"
                        _b.writeRune((91 : stdgo.GoInt32));
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L140"
                        if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L141"
                            _b.writeString(("^\\x00-\\x{10FFFF}" : stdgo.GoString));
                        } else if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((1114111 : stdgo.GoInt32)) : Bool) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) > (2 : stdgo.GoInt) : Bool) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L145"
                            _b.writeRune((94 : stdgo.GoInt32));
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L146"
                            {
                                var _i = @:assignType (1 : stdgo.GoInt);
                                while ((_i < (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                    var __0 = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32), __1 = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoInt32) : stdgo.GoInt32);
var _hi = __1, _lo = __0;
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L148"
                                    stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L149"
                                    if (_lo != (_hi)) {
                                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L150"
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L151"
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L155"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) : Bool)) {
                                    var __0 = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L157"
                                    stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _lo, _lo == ((45 : stdgo.GoInt32)));
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L158"
                                    if (_lo != (_hi)) {
                                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L159"
                                        _b.writeRune((45 : stdgo.GoInt32));
                                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L160"
                                        stdgo._internal.regexp.syntax.Syntax__escape._escape(_b, _hi, _hi == ((45 : stdgo.GoInt32)));
                                    };
                                    _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L164"
                        _b.writeRune((93 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L166"
                        _b.writeString(("(?-s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L168"
                        _b.writeString(("(?s:.)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((7 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L170"
                        _b.writeString(("(?m:^)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L172"
                        _b.writeString(("(?m:$)" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L174"
                        _b.writeString(("\\A" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L176"
                        if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L177"
                            _b.writeString(("(?-m:$)" : stdgo.GoString));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L179"
                            _b.writeString(("\\z" : stdgo.GoString));
                        };
                        break;
                    } else if (__value__ == ((11 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L182"
                        _b.writeString(("\\b" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((12 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L184"
                        _b.writeString(("\\B" : stdgo.GoString));
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L186"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L187"
                            _b.writeString(("(?P<" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L188"
                            _b.writeString((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L189"
                            _b.writeRune((62 : stdgo.GoInt32));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L191"
                            _b.writeRune((40 : stdgo.GoInt32));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L193"
                        if ((@:checkr (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L194"
                            stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L196"
                        _b.writeRune((41 : stdgo.GoInt32));
                        break;
                    } else if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L198"
                        {
                            var _sub = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
                            if ((((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op > (13 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) || ((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) > (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L199"
                                _b.writeString(("(?:" : stdgo.GoString));
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L200"
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L201"
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L203"
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L205"
                        {
                            final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                            if (__value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L207"
                                _b.writeRune((42 : stdgo.GoInt32));
                            } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L209"
                                _b.writeRune((43 : stdgo.GoInt32));
                            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L211"
                                _b.writeRune((63 : stdgo.GoInt32));
                            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L213"
                                _b.writeRune((123 : stdgo.GoInt32));
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L214"
                                _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min)?.__copy__());
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L215"
                                if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max != ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min)) {
                                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L216"
                                    _b.writeRune((44 : stdgo.GoInt32));
                                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L217"
                                    if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max >= (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L218"
                                        _b.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max)?.__copy__());
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L221"
                                _b.writeRune((125 : stdgo.GoInt32));
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L223"
                        if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L224"
                            _b.writeRune((63 : stdgo.GoInt32));
                        };
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L227"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__1 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L228"
                            if ((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L229"
                                _b.writeString(("(?:" : stdgo.GoString));
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L230"
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L231"
                                _b.writeString((")" : stdgo.GoString));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L233"
                                stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                            };
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L237"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (_i => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L238"
                            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L239"
                                _b.writeRune((124 : stdgo.GoInt32));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L241"
                            stdgo._internal.regexp.syntax.Syntax__writeregexp._writeRegexp(_b, _sub);
                        };
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/regexp.go#L119"
                        _b.writeString(((("<invalid op" : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    };
                };
                break;
            };
        };
    }
