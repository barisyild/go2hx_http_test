package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource_static_extension.AResource_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource_static_extension.AResource_static_extension) class AResource {
    public var a : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public function new(?a:stdgo.GoArray<stdgo.GoUInt8>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 4) }, optional : false }])));
    public function __copy__() {
        return new AResource(a);
    }
}
