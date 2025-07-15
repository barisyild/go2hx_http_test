package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function isExported(_name:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L583"
        return stdgo._internal.go.token.Token_isexported.isExported(_name?.__copy__());
    }
