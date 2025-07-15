package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy.T_domainMatch_asInterface) class T_domainMatch_static_extension {
    @:keep
    @:tdfield
    static public function _match( _m:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_domainmatch.T_domainMatch, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _m:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_domainmatch.T_domainMatch = _m?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L366"
        if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), _m._host?.__copy__()) || ((_m._matchHost && (_host == (_m._host.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L367"
            return ((_m._port == (stdgo.Go.str() : stdgo.GoString)) || (_m._port == _port) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L369"
        return false;
    }
}
