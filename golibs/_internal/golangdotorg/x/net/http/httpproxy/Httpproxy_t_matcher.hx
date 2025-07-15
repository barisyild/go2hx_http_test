package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:interface typedef T_matcher = stdgo.StructType & {
    /**
        * match returns true if the host and optional port or ip and optional port
        * are allowed
        
        
    **/
    @:interfacetypeffun
    public dynamic function _match(_host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_ip.IP):Bool;
};
