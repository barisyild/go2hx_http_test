package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function isKeyword(_name:stdgo.GoString):Bool {
        var __tmp__ = (stdgo._internal.go.token.Token__keywords._keywords != null && stdgo._internal.go.token.Token__keywords._keywords.__exists__(_name?.__copy__()) ? { _0 : stdgo._internal.go.token.Token__keywords._keywords[_name?.__copy__()], _1 : true } : { _0 : ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _1 : false }), __0:stdgo._internal.go.token.Token_token.Token = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/token/token.go#L325"
        return _ok;
    }
