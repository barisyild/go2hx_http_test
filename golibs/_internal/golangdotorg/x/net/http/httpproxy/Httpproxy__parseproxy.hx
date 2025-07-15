package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function _parseProxy(_proxy:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L147"
        if (_proxy == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L148"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_proxy?.__copy__()), _proxyURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L152"
        if (((_err != null) || ((((@:checkr _proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != (("http" : stdgo.GoString)) && (@:checkr _proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != (("https" : stdgo.GoString)) : Bool) && ((@:checkr _proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ("socks5" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L159"
            {
                var __tmp__ = stdgo._internal.net.url.Url_parse.parse((("http://" : stdgo.GoString) + _proxy?.__copy__() : stdgo.GoString)?.__copy__()), _proxyURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L160"
                    return { _0 : _proxyURL, _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L163"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L164"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid proxy address %q: %v" : stdgo.GoString), new stdgo.AnyInterface(_proxy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L166"
        return { _0 : _proxyURL, _1 : (null : stdgo.Error) };
    }
