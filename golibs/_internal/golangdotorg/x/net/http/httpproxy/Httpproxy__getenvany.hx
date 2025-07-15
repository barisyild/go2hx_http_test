package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function _getEnvAny(_names:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _names = new stdgo.Slice<stdgo.GoString>(_names.length, 0, ..._names);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L99"
        if (_names != null) for (__0 => _n in _names) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L100"
            {
                var _val = @:assignType (stdgo._internal.os.Os_getenv.getenv(_n?.__copy__())?.__copy__() : stdgo.GoString);
                if (_val != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L101"
                    return _val?.__copy__();
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L104"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
