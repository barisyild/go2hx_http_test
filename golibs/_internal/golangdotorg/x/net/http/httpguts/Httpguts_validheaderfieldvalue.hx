package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function validHeaderFieldValue(_v:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L309"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_v.length) : Bool)) {
                var _b = @:assignType (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L311"
                if ((_internal.golangdotorg.x.net.http.httpguts.Httpguts__isctl._isCTL(_b) && !_internal.golangdotorg.x.net.http.httpguts.Httpguts__islws._isLWS(_b) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L312"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L315"
        return true;
    }
