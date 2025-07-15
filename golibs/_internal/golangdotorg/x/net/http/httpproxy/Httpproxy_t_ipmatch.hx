package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_ipmatch_static_extension.T_ipMatch_static_extension) @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_ipmatch_static_extension.T_ipMatch_static_extension) class T_ipMatch {
    public var _ip : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var _port : stdgo.GoString = "";
    public function new(?_ip:stdgo._internal.net.Net_ip.IP, ?_port:stdgo.GoString) {
        if (_ip != null) this._ip = _ip;
        if (_port != null) this._port = _port;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_ip", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP }, optional : false }, { name : "_port", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_ipMatch(_ip, _port);
    }
}
