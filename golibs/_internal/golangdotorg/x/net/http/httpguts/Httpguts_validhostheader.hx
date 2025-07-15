package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function validHostHeader(_h:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L226"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_h.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L227"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts__validhostbyte._validHostByte[(_h[(_i : stdgo.GoInt)] : stdgo.GoInt)]) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L228"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L231"
        return true;
    }
