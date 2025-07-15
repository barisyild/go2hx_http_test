package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function fromEnvironment():stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L90"
        return (stdgo.Go.setRef(({ hTTPProxy : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__getenvany._getEnvAny(("HTTP_PROXY" : stdgo.GoString), ("http_proxy" : stdgo.GoString))?.__copy__(), hTTPSProxy : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__getenvany._getEnvAny(("HTTPS_PROXY" : stdgo.GoString), ("https_proxy" : stdgo.GoString))?.__copy__(), noProxy : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__getenvany._getEnvAny(("NO_PROXY" : stdgo.GoString), ("no_proxy" : stdgo.GoString))?.__copy__(), cGI : stdgo._internal.os.Os_getenv.getenv(("REQUEST_METHOD" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString)) } : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_configdotconfig.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_configdotConfig })) : stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config>);
    }
