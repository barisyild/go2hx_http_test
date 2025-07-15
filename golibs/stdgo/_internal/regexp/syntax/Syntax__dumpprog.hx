package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _dumpProg(_b:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L297"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst != null) for (_j => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst) {
            var _i = (stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).inst[(_j : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_instdotinst.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_instdotInst })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst>);
            var _pc = @:assignType (stdgo._internal.strconv.Strconv_itoa.itoa(_j)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L300"
            if (((_pc.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L301"
                _b.writeString((("   " : stdgo.GoString).__slice__((_pc.length)) : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L303"
            if (_j == ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start)) {
                _pc = (_pc + (("*" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L306"
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, _pc?.__copy__(), ("\t" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L307"
            stdgo._internal.regexp.syntax.Syntax__dumpinst._dumpInst(_b, _i);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L308"
            stdgo._internal.regexp.syntax.Syntax__bw._bw(_b, ("\n" : stdgo.GoString));
        };
    }
