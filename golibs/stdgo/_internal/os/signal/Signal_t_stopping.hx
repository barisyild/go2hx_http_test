package stdgo._internal.os.signal;
import stdgo._internal.context.Context;
@:structInit @:using(stdgo._internal.os.signal.Signal_t_stopping_static_extension.T_stopping_static_extension) @:using(stdgo._internal.os.signal.Signal_t_stopping_static_extension.T_stopping_static_extension) class T_stopping {
    public var _c : stdgo.Chan<stdgo._internal.os.Os_signal.Signal> = (null : stdgo.Chan<stdgo._internal.os.Os_signal.Signal>);
    public var _h : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler> = (null : stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>);
    public function new(?_c:stdgo.Chan<stdgo._internal.os.Os_signal.Signal>, ?_h:stdgo.Ref<stdgo._internal.os.signal.Signal_t_handler.T_handler>) {
        if (_c != null) this._c = _c;
        if (_h != null) this._h = _h;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_signaldotsignal.__type__stdgodot_internaldotosdotOs_signaldotSignal }) }, optional : false }, { name : "_h", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotsignaldotsignal_t_handlerdott_handler.__type__stdgodot_internaldotosdotsignaldotSignal_t_handlerdotT_handler }) }, optional : false }])));
    public function __copy__() {
        return new T_stopping(_c, _h);
    }
}
