package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config_static_extension.T_config_static_extension) @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config_static_extension.T_config_static_extension) class T_config {
    @:embedded
    public var config : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config = ({} : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config);
    public var _httpsProxy : stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    public var _httpProxy : stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    public var _ipMatchers : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher> = (null : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
    public var _domainMatchers : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher> = (null : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
    public function new(?config:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config, ?_httpsProxy:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, ?_httpProxy:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, ?_ipMatchers:stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>, ?_domainMatchers:stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>) {
        if (config != null) this.config = config;
        if (_httpsProxy != null) this._httpsProxy = _httpsProxy;
        if (_httpProxy != null) this._httpProxy = _httpProxy;
        if (_ipMatchers != null) this._ipMatchers = _ipMatchers;
        if (_domainMatchers != null) this._domainMatchers = _domainMatchers;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "config", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_configdotconfig.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_configdotConfig }, optional : false }, { name : "_httpsProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }) }, optional : false }, { name : "_httpProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }) }, optional : false }, { name : "_ipMatchers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_matcherdott_matcher.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_matcherdotT_matcher }) }, optional : false }, { name : "_domainMatchers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_matcherdott_matcher.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_matcherdotT_matcher }) }, optional : false }])));
    public var proxyFunc(get, never) : () -> (stdgo.Ref<stdgo._internal.net.url.Url_url.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; });
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_proxyFunc():() -> (stdgo.Ref<stdgo._internal.net.url.Url_url.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; }) return @:check32 this.config.proxyFunc;
    public function __copy__() {
        return new T_config(config, _httpsProxy, _httpProxy, _ipMatchers, _domainMatchers);
    }
}
