package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t2_94606_static_extension.T_testSetPanic___localname___T2_94606_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t2_94606_static_extension.T_testSetPanic___localname___T2_94606_static_extension) class T_testSetPanic___localname___T2_94606 {
    public var z : stdgo.GoInt = 0;
    public var _namedT0 : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541 = ({} : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541);
    public function new(?z:stdgo.GoInt, ?_namedT0:_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t0_94541.T_testSetPanic___localname___t0_94541) {
        if (z != null) this.z = z;
        if (_namedT0 != null) this._namedT0 = _namedT0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_namedT0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t0_94541dott_testsetpanic___localname___t0_94541.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t0_94541dotT_testSetPanic___localname___t0_94541 }, optional : false }])));
    public function __copy__() {
        return new T_testSetPanic___localname___T2_94606(z, _namedT0);
    }
}
