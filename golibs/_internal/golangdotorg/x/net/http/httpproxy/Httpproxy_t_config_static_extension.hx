package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy.T_config_asInterface) class T_config_static_extension {
    @:keep
    @:tdfield
    static public function _init( _c:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config>):Void {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L208"
        {
            var __tmp__ = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__parseproxy._parseProxy((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config.hTTPProxy?.__copy__()), _parsed:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._httpProxy = _parsed;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L211"
        {
            var __tmp__ = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__parseproxy._parseProxy((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config.hTTPSProxy?.__copy__()), _parsed:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._httpsProxy = _parsed;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L215"
        if (stdgo._internal.strings.Strings_split.split((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config.noProxy?.__copy__(), ("," : stdgo.GoString)) != null) for (__0 => _p in stdgo._internal.strings.Strings_split.split((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config.noProxy?.__copy__(), ("," : stdgo.GoString))) {
            _p = stdgo._internal.strings.Strings_tolower.toLower(stdgo._internal.strings.Strings_trimspace.trimSpace(_p?.__copy__())?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L217"
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L218"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L221"
            if (_p == (("*" : stdgo.GoString))) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers = (new stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>(1, 1, ...[stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_allmatch.T_allMatch() : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_allmatch.T_allMatch), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_allmatchdott_allmatch.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_allmatchdotT_allMatch)]) : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._domainMatchers = (new stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>(1, 1, ...[stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_allmatch.T_allMatch() : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_allmatch.T_allMatch), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_allmatchdott_allmatch.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_allmatchdotT_allMatch)]) : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L224"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L228"
            {
                var __tmp__ = stdgo._internal.net.Net_parsecidr.parseCIDR(_p?.__copy__()), __1:stdgo._internal.net.Net_ip.IP = __tmp__._0, _pnet:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers.__append__(stdgo.Go.asInterface(({ _cidr : _pnet } : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatch.T_cidrMatch), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_cidrmatchdott_cidrmatch.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_cidrmatchdotT_cidrMatch)) : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L230"
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_p?.__copy__()), _phost:stdgo.GoString = __tmp__._0, _pport:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L235"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L236"
                if ((_phost.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L238"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L240"
                if (((_phost[(0 : stdgo.GoInt)] == (91 : stdgo.GoUInt8)) && (_phost[((_phost.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
                    _phost = (_phost.__slice__((1 : stdgo.GoInt), ((_phost.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                };
            } else {
                _phost = _p?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L247"
            {
                var _pip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_phost?.__copy__()) : stdgo._internal.net.Net_ip.IP);
                if (_pip != null) {
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers.__append__(stdgo.Go.asInterface(({ _ip : _pip, _port : _pport?.__copy__() } : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_ipmatch.T_ipMatch), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_ipmatchdott_ipmatch.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_ipmatchdotT_ipMatch)) : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L249"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L252"
            if ((_phost.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L254"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L261"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_phost?.__copy__(), ("*." : stdgo.GoString))) {
                _phost = (_phost.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            var _matchHost = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L265"
            if (_phost[(0 : stdgo.GoInt)] != ((46 : stdgo.GoUInt8))) {
                _matchHost = true;
                _phost = (("." : stdgo.GoString) + _phost?.__copy__() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L269"
            {
                var __tmp__ = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy__idnaascii._idnaASCII(_phost?.__copy__()), _v:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _phost = _v?.__copy__();
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._domainMatchers = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._domainMatchers.__append__(stdgo.Go.asInterface(({ _host : _phost?.__copy__(), _port : _pport?.__copy__(), _matchHost : _matchHost } : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_domainmatch.T_domainMatch), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydothttpproxy_t_domainmatchdott_domainmatch.__type___internaldotgolangdotorgdotxdotnetdothttpdothttpproxydotHttpproxy_t_domainmatchdotT_domainMatch)) : stdgo.Slice<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher>);
        };
    }
    @:keep
    @:tdfield
    static public function _useProxy( _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config>, _addr:stdgo.GoString):Bool {
        @:recv var _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config> = _cfg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L173"
        if ((_addr.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L174"
            return true;
        };
        var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L177"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L178"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L180"
        if (_host == (("localhost" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L181"
            return false;
        };
        var _ip = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L184"
        if (_ip != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L185"
            if (_ip.isLoopback()) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L186"
                return false;
            };
        };
        _addr = stdgo._internal.strings.Strings_tolower.toLower(stdgo._internal.strings.Strings_trimspace.trimSpace(_host?.__copy__())?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L192"
        if (_ip != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L193"
            if ((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers != null) for (__0 => _m in (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ipMatchers) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L194"
                if (_m._match(_addr?.__copy__(), _port?.__copy__(), _ip)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L195"
                    return false;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L199"
        if ((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._domainMatchers != null) for (__0 => _m in (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._domainMatchers) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L200"
            if (_m._match(_addr?.__copy__(), _port?.__copy__(), _ip)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L201"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L204"
        return true;
    }
    @:keep
    @:tdfield
    static public function _proxyForURL( _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config>, _reqURL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _cfg:stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config> = _cfg;
        var _proxy:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L128"
        if ((@:checkr _reqURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == (("https" : stdgo.GoString))) {
            _proxy = (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._httpsProxy;
        } else if ((@:checkr _reqURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == (("http" : stdgo.GoString))) {
            _proxy = (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._httpProxy;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L132"
            if ((({
                final value = _proxy;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).config.cGI : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L133"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("refusing to use HTTP_PROXY value in CGI environment; see golang.org/s/cgihttpproxy" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L136"
        if (({
            final value = _proxy;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L137"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L139"
        if (!_cfg._useProxy(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy__canonicaladdr._canonicalAddr(_reqURL)?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L140"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L143"
        return { _0 : _proxy, _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function proxyFunc( __self__:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_config.T_config):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return @:_5 __self__.proxyFunc();
}
