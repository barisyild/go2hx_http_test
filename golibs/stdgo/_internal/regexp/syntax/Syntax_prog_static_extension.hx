package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Prog_asInterface) class Prog_static_extension {
    @:keep
    @:tdfield
    static public function startCond( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _pc_184:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _flag_183:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
        var loopBreak = false;
        var _i_195:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _pc_184 = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32);
                    _i_195 = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc_184 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3434265i64;
                } else if (__value__ == (3434265i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3434272i64;
                } else if (__value__ == (3434272i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3434276i64;
                    } else {
                        _gotoNext = 3434486i64;
                    };
                } else if (__value__ == (3434276i64)) {
                    _gotoNext = 3434280i64;
                } else if (__value__ == (3434280i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L175"
                    {
                        final __value__ = (@:checkr _i_195 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                        if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3434296i64;
                        } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3434345i64;
                        } else if (__value__ == ((2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
                            _gotoNext = 3434384i64;
                        } else {
                            _gotoNext = 3434424i64;
                        };
                    };
                } else if (__value__ == (3434296i64)) {
                    _flag_183 = (_flag_183 | (((@:checkr _i_195 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3434453i64;
                } else if (__value__ == (3434345i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L179"
                    return (255 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp);
                    _gotoNext = 3434453i64;
                } else if (__value__ == (3434384i64)) {
                    _gotoNext = 3434453i64;
                } else if (__value__ == (3434424i64)) {
                    loopBreak = true;
                    _gotoNext = 3434272i64;
                } else if (__value__ == (3434453i64)) {
                    _pc_184 = (@:checkr _i_195 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                    _i_195 = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc_184 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                    _gotoNext = 3434272i64;
                } else if (__value__ == (3434486i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L188"
                    return _flag_183;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function prefix( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _prefix = ("" : stdgo.GoString), _complete = false;
        var _i = _p._skipNop(((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L154"
        if (((_i._op() != (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L155"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L160"
        while ((((_i._op() == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((1 : stdgo.GoInt)) : Bool) && (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L161"
            _buf.writeRune((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)]);
            _i = _p._skipNop((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L164"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _skipNop( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L131"
        while ((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (2 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
            _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L134"
        return _i;
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = _p;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L124"
        stdgo._internal.regexp.syntax.Syntax__dumpprog._dumpProg((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), _p);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L125"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
}
