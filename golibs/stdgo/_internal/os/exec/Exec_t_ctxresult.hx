package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:structInit @:using(stdgo._internal.os.exec.Exec_t_ctxresult_static_extension.T_ctxResult_static_extension) @:using(stdgo._internal.os.exec.Exec_t_ctxresult_static_extension.T_ctxResult_static_extension) class T_ctxResult {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _timer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public function new(?_err:stdgo.Error, ?_timer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>) {
        if (_err != null) this._err = _err;
        if (_timer != null) this._timer = _timer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_timer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false }])));
    public function __copy__() {
        return new T_ctxResult(_err, _timer);
    }
}
