package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function _tokenEqual(_t1:stdgo.GoString, _t2:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L159"
        if ((_t1.length) != ((_t2.length))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L160"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L162"
        if (_t1 != null) for (_i => _b in _t1) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L163"
            if ((_b >= (128 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L165"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L167"
            if (_internal.golangdotorg.x.net.http.httpguts.Httpguts__lowerascii._lowerASCII((_b : stdgo.GoUInt8)) != (_internal.golangdotorg.x.net.http.httpguts.Httpguts__lowerascii._lowerASCII(_t2[(_i : stdgo.GoInt)]))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L168"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L171"
        return true;
    }
