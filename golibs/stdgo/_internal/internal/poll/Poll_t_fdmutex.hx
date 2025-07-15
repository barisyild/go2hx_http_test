package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:structInit @:using(stdgo._internal.internal.poll.Poll_t_fdmutex_static_extension.T_fdMutex_static_extension) @:using(stdgo._internal.internal.poll.Poll_t_fdmutex_static_extension.T_fdMutex_static_extension) class T_fdMutex {
    public var _state : stdgo.GoUInt64 = 0;
    public var _rsema : stdgo.GoUInt32 = 0;
    public var _wsema : stdgo.GoUInt32 = 0;
    public function new(?_state:stdgo.GoUInt64, ?_rsema:stdgo.GoUInt32, ?_wsema:stdgo.GoUInt32) {
        if (_state != null) this._state = _state;
        if (_rsema != null) this._rsema = _rsema;
        if (_wsema != null) this._wsema = _wsema;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_rsema", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_wsema", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_fdMutex(_state, _rsema, _wsema);
    }
}
