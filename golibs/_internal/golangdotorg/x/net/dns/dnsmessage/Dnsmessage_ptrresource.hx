package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource_static_extension.PTRResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource_static_extension.PTRResource_static_extension) class PTRResource {
    public var pTR : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public function new(?pTR:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name) {
        if (pTR != null) this.pTR = pTR;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "pTR", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }])));
    public function __copy__() {
        return new PTRResource(pTR);
    }
}
