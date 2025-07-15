package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstructuv_131831_static_extension.T_testArrayOf___localname___TstructUV_131831_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstructuv_131831_static_extension.T_testArrayOf___localname___TstructUV_131831_static_extension) class T_testArrayOf___localname___TstructUV_131831 {
    public var u : stdgo.GoInt = 0;
    public var v : stdgo.GoFloat64 = 0;
    public function new(?u:stdgo.GoInt, ?v:stdgo.GoFloat64) {
        if (u != null) this.u = u;
        if (v != null) this.v = v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "u", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testArrayOf___localname___TstructUV_131831(u, v);
    }
}
