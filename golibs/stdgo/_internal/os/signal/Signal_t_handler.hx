package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
@:structInit @:using(stdgo._internal.os.signal.Signal_t_handler_static_extension.T_handler_static_extension) @:using(stdgo._internal.os.signal.Signal_t_handler_static_extension.T_handler_static_extension) class T_handler {
    public var _mask : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(3, 3).__setNumber32__();
    public function new(?_mask:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_mask != null) this._mask = _mask;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, 3) }, optional : false }])));
    public function __copy__() {
        return new T_handler(_mask);
    }
}
