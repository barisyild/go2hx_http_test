package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension) @:using(stdgo._internal.regexp.syntax.Syntax_t_compiler_static_extension.T_compiler_static_extension) class T_compiler {
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
    public function new(?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_progdotprog.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_progdotProg }) }, optional : false }])));
    public function __copy__() {
        return new T_compiler(_p);
    }
}
