package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Inst_asInterface) class Inst_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo.GoString {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L286"
        stdgo._internal.regexp.syntax.Syntax__dumpinst._dumpInst((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _i);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L287"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function matchEmptyWidth( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L267"
        {
            final __value__ = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
            if (__value__ == ((1 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L269"
                return ((_before == (10 : stdgo.GoInt32)) || (_before == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L271"
                return ((_after == (10 : stdgo.GoInt32)) || (_after == (-1 : stdgo.GoInt32)) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L273"
                return _before == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L275"
                return _after == ((-1 : stdgo.GoInt32));
            } else if (__value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L277"
                return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_before) != (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_after));
            } else if (__value__ == ((32 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L279"
                return stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_before) == (stdgo._internal.regexp.syntax.Syntax_iswordchar.isWordChar(_after));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L281"
        throw new stdgo.AnyInterface(("unknown empty width arg" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function matchRunePos( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _r:stdgo.GoInt32):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _rune = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L207"
        {
            final __value__ = (_rune.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L209"
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                var _r0 = @:assignType (_rune[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L214"
                if (_r == (_r0)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L215"
                    return (0 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L217"
                if ((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L218"
                    {
                        var _r1 = @:assignType (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r0) : stdgo.GoInt32);
                        while (_r1 != (_r0)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L219"
                            if (_r == (_r1)) {
                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L220"
                                return (0 : stdgo.GoInt);
                            };
                            _r1 = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r1);
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L224"
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L227"
                if (((_r >= _rune[(0 : stdgo.GoInt)] : Bool) && (_r <= _rune[(1 : stdgo.GoInt)] : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L228"
                    return (0 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L230"
                return (-1 : stdgo.GoInt);
            } else if (__value__ == ((4 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L235"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_rune.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L236"
                        if ((_r < _rune[(_j : stdgo.GoInt)] : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L237"
                            return (-1 : stdgo.GoInt);
                        };
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L239"
                        if ((_r <= _rune[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L240"
                            return (_j / (2 : stdgo.GoInt) : stdgo.GoInt);
                        };
                        _j = (_j + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L243"
                return (-1 : stdgo.GoInt);
            };
        };
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType ((_rune.length) / (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L249"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L251"
            {
                var _c = @:assignType (_rune[((2 : stdgo.GoInt) * _m : stdgo.GoInt)] : stdgo.GoInt32);
                if ((_c <= _r : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L252"
                    if ((_r <= _rune[(((2 : stdgo.GoInt) * _m : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L253"
                        return _m;
                    };
                    _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _hi = _m;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L260"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function matchRune( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>, _r:stdgo.GoInt32):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L196"
        return _i.matchRunePos(_r) != ((-1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _op( _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>):stdgo._internal.regexp.syntax.Syntax_instop.InstOp {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = _i;
        var _op = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L140"
        {
            final __value__ = _op;
            if (__value__ == ((8 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((9 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                _op = (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L144"
        return _op;
    }
}
