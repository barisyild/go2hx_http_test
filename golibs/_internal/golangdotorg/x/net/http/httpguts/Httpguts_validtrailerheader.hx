package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function validTrailerHeader(_name:stdgo.GoString):Bool {
        _name = stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_name?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/guts.go#L22"
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("If-" : stdgo.GoString)) || (_internal.golangdotorg.x.net.http.httpguts.Httpguts__badtrailer._badTrailer[_name] ?? false) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/guts.go#L23"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/guts.go#L25"
        return true;
    }
