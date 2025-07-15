package _internal.bytes_test;
class T_testReaderCopyNothing___localname___justWriter_5910_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.bytes_test.Bytes_test_t_testreadercopynothing___localname___justwriter_5910pointer.T_testReaderCopyNothing___localname___justWriter_5910Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
