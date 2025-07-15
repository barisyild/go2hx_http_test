package stdgo._internal.crypto.rc4;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.crypto.rc4.Rc4_cipher_static_extension.Cipher_static_extension) @:using(stdgo._internal.crypto.rc4.Rc4_cipher_static_extension.Cipher_static_extension) class Cipher {
    public var _s : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(256, 256).__setNumber32__();
    public var _i : stdgo.GoUInt8 = 0;
    public var _j : stdgo.GoUInt8 = 0;
    public function new(?_s:stdgo.GoArray<stdgo.GoUInt32>, ?_i:stdgo.GoUInt8, ?_j:stdgo.GoUInt8) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 256) }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_j", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new Cipher(_s, _i, _j);
    }
}
