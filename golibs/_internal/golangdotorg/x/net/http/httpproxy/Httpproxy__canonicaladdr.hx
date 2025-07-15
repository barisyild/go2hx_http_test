package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function _canonicalAddr(_url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.GoString {
        var _addr = @:assignType (_url.hostname()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L285"
        {
            var __tmp__ = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__idnaascii._idnaASCII(_addr?.__copy__()), _v:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _addr = _v?.__copy__();
            };
        };
        var _port = @:assignType (_url.port()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L289"
        if (_port == ((stdgo.Go.str() : stdgo.GoString))) {
            _port = (_internal.golangdotorg.x.net.http.httpproxy.Httpproxy__portmap._portMap[(@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme] ?? ("" : stdgo.GoString))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L292"
        return stdgo._internal.net.Net_joinhostport.joinHostPort(_addr?.__copy__(), _port?.__copy__())?.__copy__();
    }
