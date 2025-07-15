package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader_static_extension.ResourceHeader_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader_static_extension.ResourceHeader_static_extension) class ResourceHeader {
    public var name : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
    public var type : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    public var class_ : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_ = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_);
    public var tTL : stdgo.GoUInt32 = 0;
    public var length_ : stdgo.GoUInt16 = 0;
    public function new(?name:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name, ?type:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, ?class_:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_, ?tTL:stdgo.GoUInt32, ?length_:stdgo.GoUInt16) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (class_ != null) this.class_ = class_;
        if (tTL != null) this.tTL = tTL;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_namedotname.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_namedotName }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_type_dottype_.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_type_dotType_ }, optional : false }, { name : "class_", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_class_dotclass_.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_class_dotClass_ }, optional : false }, { name : "tTL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "length_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new ResourceHeader(name, type, class_, tTL, length_);
    }
}
