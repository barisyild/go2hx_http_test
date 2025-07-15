package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource_static_extension.UnknownResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource_static_extension.UnknownResource_static_extension) class UnknownResource {
    public var type : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?type:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, ?data:stdgo.Slice<stdgo.GoUInt8>) {
        if (type != null) this.type = type;
        if (data != null) this.data = data;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_type_dottype_.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_type_dotType_ }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new UnknownResource(type, data);
    }
}
