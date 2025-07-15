package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstruct_131171_static_extension.T_testArrayOf___localname___Tstruct_131171_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testarrayof___localname___tstruct_131171_static_extension.T_testArrayOf___localname___Tstruct_131171_static_extension) class T_testArrayOf___localname___Tstruct_131171 {
    public var v : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(1, 1).__setNumber32__();
    public function new(?v:stdgo.GoArray<stdgo.GoInt>) {
        if (v != null) this.v = v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, 1) }, optional : false }])));
    public function __copy__() {
        return new T_testArrayOf___localname___Tstruct_131171(v);
    }
}
