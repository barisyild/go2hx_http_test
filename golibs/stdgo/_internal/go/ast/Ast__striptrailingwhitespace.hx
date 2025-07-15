package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _stripTrailingWhitespace(_s:stdgo.GoString):stdgo.GoString {
        var _i = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L85"
        while (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.ast.Ast__iswhitespace._isWhitespace(_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L86"
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L88"
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
