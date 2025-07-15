package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource_static_extension.AAAAResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource_static_extension.AAAAResource_static_extension) class AAAAResource {
    public var aAAA : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public function new(?aAAA:stdgo.GoArray<stdgo.GoUInt8>) {
        if (aAAA != null) this.aAAA = aAAA;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "aAAA", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) }, optional : false }])));
    public function __copy__() {
        return new AAAAResource(aAAA);
    }
}
