package _internal.io.fs_test;
class T_openOnly_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function open(_0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:_0 __self__.value.open(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.io.fs_test.Fs_test_t_openonlypointer.T_openOnlyPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
