package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatch_static_extension.T_cidrMatch_static_extension) @:using(_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_t_cidrmatch_static_extension.T_cidrMatch_static_extension) class T_cidrMatch {
    public var _cidr : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet> = (null : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>);
    public function new(?_cidr:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>) {
        if (_cidr != null) this._cidr = _cidr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cidr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipnetdotipnet.__type__stdgodot_internaldotnetdotNet_ipnetdotIPNet }) }, optional : false }])));
    public function __copy__() {
        return new T_cidrMatch(_cidr);
    }
}
