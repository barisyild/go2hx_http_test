package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t1_94571_static_extension.T_testSetPanic___localname___t1_94571_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t1_94571_static_extension.T_testSetPanic___localname___t1_94571_static_extension) class T_testSetPanic___localname___t1_94571 {
    public var y : stdgo.GoInt = 0;
    @:embedded
    public var _t0 : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541 = ({} : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541);
    public function new(?y:stdgo.GoInt, ?_t0:_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541) {
        if (y != null) this.y = y;
        if (_t0 != null) this._t0 = _t0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_t0", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t0_94541dott_testsetpanic___localname___t0_94541.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t0_94541dotT_testSetPanic___localname___t0_94541 }, optional : false }])));
    public function __copy__() {
        return new T_testSetPanic___localname___t1_94571(y, _t0);
    }
}
