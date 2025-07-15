package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.time.Time_t_runtimetimer_static_extension.T_runtimeTimer_static_extension) @:using(stdgo._internal.time.Time_t_runtimetimer_static_extension.T_runtimeTimer_static_extension) class T_runtimeTimer {
    public var _pp : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _when : stdgo.GoInt64 = 0;
    public var _period : stdgo.GoInt64 = 0;
    public var _f : (stdgo.AnyInterface, stdgo.GoUIntptr) -> Void = null;
    public var _arg : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _seq : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _nextwhen : stdgo.GoInt64 = 0;
    public var _status : stdgo.GoUInt32 = 0;
    public function new(?_pp:stdgo.GoUIntptr, ?_when:stdgo.GoInt64, ?_period:stdgo.GoInt64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:stdgo.GoInt64, ?_status:stdgo.GoUInt32) {
        if (_pp != null) this._pp = _pp;
        if (_when != null) this._when = _when;
        if (_period != null) this._period = _period;
        if (_f != null) this._f = _f;
        if (_arg != null) this._arg = _arg;
        if (_seq != null) this._seq = _seq;
        if (_nextwhen != null) this._nextwhen = _nextwhen;
        if (_status != null) this._status = _status;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_when", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_period", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.interfaceType(true, []), stdgo._internal.internal.reflect.GoType.basic(uintptr_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_arg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_seq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_nextwhen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_status", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_runtimeTimer(_pp, _when, _period, _f, _arg, _seq, _nextwhen, _status);
    }
}
