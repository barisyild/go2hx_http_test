package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
class T_wrappedError_asInterface {
    @:keep
    public dynamic function unwrap():stdgo.Error return @:_0 __self__.value.unwrap();
    @:keep
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.os.exec.Exec_t_wrappederrorpointer.T_wrappedErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
