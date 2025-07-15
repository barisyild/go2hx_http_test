package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function punycodeHostPort(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L330"
        if (_internal.golangdotorg.x.net.http.httpguts.Httpguts__isascii._isASCII(_v?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L331"
            return { _0 : _v?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_v?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L335"
        if (_err != null) {
            _host = _v?.__copy__();
            _port = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        {
            var __tmp__ = _internal.golangdotorg.x.net.idna.Idna_toascii.toASCII(_host?.__copy__());
            _host = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L343"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L346"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L348"
        if (_port == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L349"
            return { _0 : _host?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L351"
        return { _0 : stdgo._internal.net.Net_joinhostport.joinHostPort(_host?.__copy__(), _port?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
