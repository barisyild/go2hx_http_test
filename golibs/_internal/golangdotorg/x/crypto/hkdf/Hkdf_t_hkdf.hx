package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf_static_extension.T_hkdf_static_extension) @:using(_internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf_static_extension.T_hkdf_static_extension) class T_hkdf {
    public var _expander : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _size : stdgo.GoInt = 0;
    public var _info : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _counter : stdgo.GoUInt8 = 0;
    public var _prev : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_expander:stdgo._internal.hash.Hash_hash.Hash, ?_size:stdgo.GoInt, ?_info:stdgo.Slice<stdgo.GoUInt8>, ?_counter:stdgo.GoUInt8, ?_prev:stdgo.Slice<stdgo.GoUInt8>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_expander != null) this._expander = _expander;
        if (_size != null) this._size = _size;
        if (_info != null) this._info = _info;
        if (_counter != null) this._counter = _counter;
        if (_prev != null) this._prev = _prev;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_expander", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_info", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_counter", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_hkdf(_expander, _size, _info, _counter, _prev, _buf);
    }
}
