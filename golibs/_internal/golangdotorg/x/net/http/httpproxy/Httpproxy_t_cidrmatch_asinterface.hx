package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
class T_cidrMatch_asInterface {
    @:keep
    public dynamic function _match(_host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_ip.IP):Bool return @:_0 __self__.value._match(_host, _port, _ip);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatchpointer.T_cidrMatchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
