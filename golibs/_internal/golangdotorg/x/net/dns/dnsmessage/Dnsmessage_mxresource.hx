package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource_static_extension.MXResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource_static_extension.MXResource_static_extension) class MXResource {
    public var pref : stdgo.GoUInt16 = 0;
    public var mX : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public function new(?pref:stdgo.GoUInt16, ?mX:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name) {
        if (pref != null) this.pref = pref;
        if (mX != null) this.mX = mX;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "pref", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "mX", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }])));
    public function __copy__() {
        return new MXResource(pref, mX);
    }
}
