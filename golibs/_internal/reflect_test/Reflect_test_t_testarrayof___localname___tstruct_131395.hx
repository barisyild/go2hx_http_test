package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstruct_131395_static_extension.T_testArrayOf___localname___Tstruct_131395_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstruct_131395_static_extension.T_testArrayOf___localname___Tstruct_131395_static_extension) class T_testArrayOf___localname___Tstruct_131395 {
    public var v : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?v:stdgo.Slice<stdgo.GoInt>) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_testArrayOf___localname___Tstruct_131395(v);
    }
}
