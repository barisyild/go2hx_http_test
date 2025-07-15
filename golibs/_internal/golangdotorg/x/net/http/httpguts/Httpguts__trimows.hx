package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function _trimOWS(_x:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L126"
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && _internal.golangdotorg.x.net.http.httpguts.Httpguts__isows._isOWS(_x[(0 : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L129"
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && _internal.golangdotorg.x.net.http.httpguts.Httpguts__isows._isOWS(_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__(0, ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L132"
        return _x?.__copy__();
    }
