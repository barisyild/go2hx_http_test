package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function _idnaASCII(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L309"
        if (_internal.golangdotorg.x.net.http.httpproxy.Httpproxy__isascii._isASCII(_v?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L310"
            return { _0 : _v?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L312"
        return _internal.golangdotorg.x.net.idna.Idna_lookup.lookup.toASCII(_v?.__copy__());
    }
