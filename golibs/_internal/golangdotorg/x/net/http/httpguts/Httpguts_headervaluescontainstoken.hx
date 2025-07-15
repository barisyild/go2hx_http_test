package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function headerValuesContainsToken(_values:stdgo.Slice<stdgo.GoString>, _token:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L107"
        if (_values != null) for (__0 => _v in _values) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L108"
            if (_internal.golangdotorg.x.net.http.httpguts.Httpguts__headervaluecontainstoken._headerValueContainsToken(_v?.__copy__(), _token?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L109"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L112"
        return false;
    }
