package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy.Config_asInterface) class Config_static_extension {
    @:keep
    @:tdfield
    static public function proxyFunc( _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config> = _cfg;
        var _cfg1 = (stdgo.Go.setRef(({ config : (_cfg : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config)?.__copy__() } : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_configdott_config.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_configdotT_config })) : stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L122"
        _cfg1._init();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L123"
        return _cfg1._proxyForURL;
    }
}
