package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
@:structInit @:using(_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher_static_extension.Cipher_static_extension) @:using(_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher_static_extension.Cipher_static_extension) class Cipher {
    public var _key : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(8, 8).__setNumber32__();
    public var _counter : stdgo.GoUInt32 = 0;
    public var _nonce : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(3, 3).__setNumber32__();
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public var _len : stdgo.GoInt = 0;
    public var _overflow : Bool = false;
    public var _precompDone : Bool = false;
    public var _p1 : stdgo.GoUInt32 = 0;
    public var _p5 : stdgo.GoUInt32 = 0;
    public var _p9 : stdgo.GoUInt32 = 0;
    public var _p13 : stdgo.GoUInt32 = 0;
    public var _p2 : stdgo.GoUInt32 = 0;
    public var _p6 : stdgo.GoUInt32 = 0;
    public var _p10 : stdgo.GoUInt32 = 0;
    public var _p14 : stdgo.GoUInt32 = 0;
    public var _p3 : stdgo.GoUInt32 = 0;
    public var _p7 : stdgo.GoUInt32 = 0;
    public var _p11 : stdgo.GoUInt32 = 0;
    public var _p15 : stdgo.GoUInt32 = 0;
    public function new(?_key:stdgo.GoArray<stdgo.GoUInt32>, ?_counter:stdgo.GoUInt32, ?_nonce:stdgo.GoArray<stdgo.GoUInt32>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_len:stdgo.GoInt, ?_overflow:Bool, ?_precompDone:Bool, ?_p1:stdgo.GoUInt32, ?_p5:stdgo.GoUInt32, ?_p9:stdgo.GoUInt32, ?_p13:stdgo.GoUInt32, ?_p2:stdgo.GoUInt32, ?_p6:stdgo.GoUInt32, ?_p10:stdgo.GoUInt32, ?_p14:stdgo.GoUInt32, ?_p3:stdgo.GoUInt32, ?_p7:stdgo.GoUInt32, ?_p11:stdgo.GoUInt32, ?_p15:stdgo.GoUInt32) {
        if (_key != null) this._key = _key;
        if (_counter != null) this._counter = _counter;
        if (_nonce != null) this._nonce = _nonce;
        if (_buf != null) this._buf = _buf;
        if (_len != null) this._len = _len;
        if (_overflow != null) this._overflow = _overflow;
        if (_precompDone != null) this._precompDone = _precompDone;
        if (_p1 != null) this._p1 = _p1;
        if (_p5 != null) this._p5 = _p5;
        if (_p9 != null) this._p9 = _p9;
        if (_p13 != null) this._p13 = _p13;
        if (_p2 != null) this._p2 = _p2;
        if (_p6 != null) this._p6 = _p6;
        if (_p10 != null) this._p10 = _p10;
        if (_p14 != null) this._p14 = _p14;
        if (_p3 != null) this._p3 = _p3;
        if (_p7 != null) this._p7 = _p7;
        if (_p11 != null) this._p11 = _p11;
        if (_p15 != null) this._p15 = _p15;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 8) }, optional : false },
{ name : "_counter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_nonce", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 3) }, optional : false },
{ name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 64) }, optional : false },
{ name : "_len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_overflow", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_precompDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_p1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p5", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p9", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p13", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p6", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p10", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p14", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p3", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p7", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p11", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_p15", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new Cipher(
_key,
_counter,
_nonce,
_buf,
_len,
_overflow,
_precompDone,
_p1,
_p5,
_p9,
_p13,
_p2,
_p6,
_p10,
_p14,
_p3,
_p7,
_p11,
_p15);
    }
}
