package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function isGenerated(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):Bool {
        var __tmp__ = stdgo._internal.go.ast.Ast__generator._generator(_file), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1089"
        return _ok;
    }
