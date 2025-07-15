package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource_static_extension.SRVResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource_static_extension.SRVResource_static_extension) class SRVResource {
    public var priority : stdgo.GoUInt16 = 0;
    public var weight : stdgo.GoUInt16 = 0;
    public var port : stdgo.GoUInt16 = 0;
    public var target : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public function new(?priority:stdgo.GoUInt16, ?weight:stdgo.GoUInt16, ?port:stdgo.GoUInt16, ?target:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name) {
        if (priority != null) this.priority = priority;
        if (weight != null) this.weight = weight;
        if (port != null) this.port = port;
        if (target != null) this.target = target;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "priority", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "weight", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "port", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "target", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }])));
    public function __copy__() {
        return new SRVResource(priority, weight, port, target);
    }
}
