package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>; var _1 : stdgo.Error; } {
        var _c:stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler = ({} : stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L73"
        _c._init();
        var _f = @:assignType (_c._compile(_re)?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L75"
        _f._out._patch(_c._p, _c._inst((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))._i);
        (@:checkr _c._p ?? throw stdgo.Error._nullPointerDereference.__underlying__()).start = (_f._i : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/compile.go#L77"
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }
