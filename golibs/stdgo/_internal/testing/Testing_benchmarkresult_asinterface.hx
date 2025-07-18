package stdgo._internal.testing;
class BenchmarkResult_asInterface {
    @:keep
    public dynamic function memString():stdgo.GoString return @:_0 __self__.value.memString();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function allocedBytesPerOp():stdgo.GoInt64 return @:_0 __self__.value.allocedBytesPerOp();
    @:keep
    public dynamic function allocsPerOp():stdgo.GoInt64 return @:_0 __self__.value.allocsPerOp();
    @:keep
    public dynamic function _mbPerSec():stdgo.GoFloat64 return @:_0 __self__.value._mbPerSec();
    @:keep
    public dynamic function nsPerOp():stdgo.GoInt64 return @:_0 __self__.value.nsPerOp();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_benchmarkresultpointer.BenchmarkResultPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
