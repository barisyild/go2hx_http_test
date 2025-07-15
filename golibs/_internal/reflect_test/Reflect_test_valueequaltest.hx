package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_valueequaltest_static_extension.ValueEqualTest_static_extension) @:using(_internal.reflect_test.Reflect_test_valueequaltest_static_extension.ValueEqualTest_static_extension) class ValueEqualTest {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _u : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _eq : Bool = false;
    public var _vDeref : Bool = false;
    public var _uDeref : Bool = false;
    public function new(?_v:stdgo.AnyInterface, ?_u:stdgo.AnyInterface, ?_eq:Bool, ?_vDeref:Bool, ?_uDeref:Bool) {
        if (_v != null) this._v = _v;
        if (_u != null) this._u = _u;
        if (_eq != null) this._eq = _eq;
        if (_vDeref != null) this._vDeref = _vDeref;
        if (_uDeref != null) this._uDeref = _uDeref;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_eq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_vDeref", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_uDeref", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new ValueEqualTest(_v, _u, _eq, _vDeref, _uDeref);
    }
}
