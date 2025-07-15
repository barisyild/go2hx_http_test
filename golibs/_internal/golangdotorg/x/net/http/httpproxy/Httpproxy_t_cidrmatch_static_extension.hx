package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy.T_cidrMatch_asInterface) class T_cidrMatch_static_extension {
    @:keep
    @:tdfield
    static public function _match( _m:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatch.T_cidrMatch, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _m:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatch.T_cidrMatch = _m?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L343"
        return _m._cidr.contains(_ip);
    }
}
