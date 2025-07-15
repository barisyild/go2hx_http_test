package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option_static_extension.Option_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option_static_extension.Option_static_extension) class Option {
    public var code : stdgo.GoUInt16 = 0;
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?code:stdgo.GoUInt16, ?data:stdgo.Slice<stdgo.GoUInt8>) {
        if (code != null) this.code = code;
        if (data != null) this.data = data;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "code", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Option(code, data);
    }
}
