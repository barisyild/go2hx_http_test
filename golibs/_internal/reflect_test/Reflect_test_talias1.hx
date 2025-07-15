package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_talias1_static_extension.Talias1_static_extension) @:using(_internal.reflect_test.Reflect_test_talias1_static_extension.Talias1_static_extension) class Talias1 {
    @:embedded
    public var _byte : stdgo.GoUInt8 = 0;
    @:embedded
    public var _uint8 : stdgo.GoUInt8 = 0;
    @:embedded
    public var _int : stdgo.GoInt = 0;
    @:embedded
    public var _int32 : stdgo.GoInt32 = 0;
    @:embedded
    public var _rune : stdgo.GoInt32 = 0;
    public function new(?_byte:stdgo.GoUInt8, ?_uint8:stdgo.GoUInt8, ?_int:stdgo.GoInt, ?_int32:stdgo.GoInt32, ?_rune:stdgo.GoInt32) {
        if (_byte != null) this._byte = _byte;
        if (_uint8 != null) this._uint8 = _uint8;
        if (_int != null) this._int = _int;
        if (_int32 != null) this._int32 = _int32;
        if (_rune != null) this._rune = _rune;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_byte", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_uint8", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_int", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_int32", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_rune", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new Talias1(_byte, _uint8, _int, _int32, _rune);
    }
}
