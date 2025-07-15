package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name_static_extension.Name_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name_static_extension.Name_static_extension) class Name {
    public var data : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(255, 255).__setNumber32__();
    public var length_ : stdgo.GoUInt8 = 0;
    public function new(?data:stdgo.GoArray<stdgo.GoUInt8>, ?length_:stdgo.GoUInt8) {
        if (data != null) this.data = data;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 255) }, optional : false }, { name : "length_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new Name(data, length_);
    }
}
