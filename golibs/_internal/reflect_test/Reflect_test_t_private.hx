package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_private_static_extension.T_private_static_extension) @:using(_internal.reflect_test.Reflect_test_t_private_static_extension.T_private_static_extension) class T_private {
    public var z : stdgo.GoInt = 0;
    public var _z : stdgo.GoInt = 0;
    public var s : stdgo.GoString = "";
    public var a : stdgo.GoArray<_internal.reflect_test.Reflect_test_private.Private> = new stdgo.GoArray<_internal.reflect_test.Reflect_test_private.Private>(1, 1, ...[for (i in 0 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_private.Private)]);
    public var t : stdgo.Slice<_internal.reflect_test.Reflect_test_private.Private> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_private.Private>);
    public function new(?z:stdgo.GoInt, ?_z:stdgo.GoInt, ?s:stdgo.GoString, ?a:stdgo.GoArray<_internal.reflect_test.Reflect_test_private.Private>, ?t:stdgo.Slice<_internal.reflect_test.Reflect_test_private.Private>) {
        if (z != null) this.z = z;
        if (_z != null) this._z = _z;
        if (s != null) this.s = s;
        if (a != null) this.a = a;
        if (t != null) this.t = t;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "a", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_privatedotprivate.__type___internaldotreflect_testdotReflect_test_privatedotPrivate }, 1) }, optional : false }, { name : "t", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_privatedotprivate.__type___internaldotreflect_testdotReflect_test_privatedotPrivate }) }, optional : false }])));
    public function __copy__() {
        return new T_private(z, _z, s, a, t);
    }
}
