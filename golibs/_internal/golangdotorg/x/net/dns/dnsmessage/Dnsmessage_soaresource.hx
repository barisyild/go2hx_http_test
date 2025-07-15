package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource_static_extension.SOAResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource_static_extension.SOAResource_static_extension) class SOAResource {
    public var nS : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public var mBox : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public var serial : stdgo.GoUInt32 = 0;
    public var refresh : stdgo.GoUInt32 = 0;
    public var retry : stdgo.GoUInt32 = 0;
    public var expire : stdgo.GoUInt32 = 0;
    public var minTTL : stdgo.GoUInt32 = 0;
    public function new(?nS:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name, ?mBox:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name, ?serial:stdgo.GoUInt32, ?refresh:stdgo.GoUInt32, ?retry:stdgo.GoUInt32, ?expire:stdgo.GoUInt32, ?minTTL:stdgo.GoUInt32) {
        if (nS != null) this.nS = nS;
        if (mBox != null) this.mBox = mBox;
        if (serial != null) this.serial = serial;
        if (refresh != null) this.refresh = refresh;
        if (retry != null) this.retry = retry;
        if (expire != null) this.expire = expire;
        if (minTTL != null) this.minTTL = minTTL;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "nS", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }, { name : "mBox", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }, { name : "serial", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "refresh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "retry", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "expire", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "minTTL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new SOAResource(nS, mBox, serial, refresh, retry, expire, minTTL);
    }
}
