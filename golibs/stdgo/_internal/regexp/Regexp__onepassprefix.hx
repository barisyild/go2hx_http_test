package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _onePassPrefix(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } {
        var _prefix = ("" : stdgo.GoString), _complete = false, _pc = (0 : stdgo.GoUInt32);
        var _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L43"
        if ((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != (3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || (((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) & (4 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) == (0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L44"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)), _2 : ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                _pc = __tmp__._2;
                __tmp__;
            };
        };
        _pc = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
        _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L48"
        while ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((6 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))) {
            _pc = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
            _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_pc : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L53"
        if (((stdgo._internal.regexp.Regexp__iop._iop(_i) != (7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) || ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L54"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)), _2 : ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start : stdgo.GoUInt32) };
                _prefix = __tmp__._0;
                _complete = __tmp__._1;
                _pc = __tmp__._2;
                __tmp__;
            };
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L59"
        while ((((stdgo._internal.regexp.Regexp__iop._iop(_i) == ((7 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((1 : stdgo.GoInt)) : Bool) && (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_flags.Flags) & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] != (65533 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L60"
            _buf.writeRune((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)]);
            {
                final __tmp__0 = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out;
                final __tmp__1 = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
                _pc = @:binopAssign __tmp__0;
                _i = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L63"
        if ((((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((3 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) && (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).arg : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) & (8 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp) != ((0 : stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__()).out : stdgo.GoInt)].op == (4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp)) : Bool)) {
            _complete = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L68"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.GoUInt32; } = { _0 : (_buf.string() : stdgo.GoString)?.__copy__(), _1 : _complete, _2 : _pc };
            _prefix = __tmp__._0;
            _complete = __tmp__._1;
            _pc = __tmp__._2;
            __tmp__;
        };
    }
