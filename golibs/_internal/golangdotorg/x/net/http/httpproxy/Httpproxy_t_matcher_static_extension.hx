package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:keep class T_matcher_static_extension {
    @:interfacetypeffun
    static public function _match(t:_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_matcher.T_matcher, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_ip.IP):Bool return t._match(_host, _port, _ip);
}
