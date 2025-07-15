package stdgo._internal.crypto.internal.boring;
@:structInit @:using(stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa_static_extension.PublicKeyECDSA_static_extension) @:using(stdgo._internal.crypto.internal.boring.Boring_publickeyecdsa_static_extension.PublicKeyECDSA_static_extension) class PublicKeyECDSA {
    @:optional
    public var __0 : stdgo.GoInt = 0;
    public function new(?__0:stdgo.GoInt) {
        if (__0 != null) this.__0 = __0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new PublicKeyECDSA(__0);
    }
}
