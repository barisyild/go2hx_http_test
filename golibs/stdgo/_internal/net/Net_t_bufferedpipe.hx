package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension) @:using(stdgo._internal.net.Net_t_bufferedpipe_static_extension.T_bufferedPipe_static_extension) class T_bufferedPipe {
    public var _softLimit : stdgo.GoInt = 0;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _closed : Bool = false;
    public var _rCond : stdgo._internal.sync.Sync_cond.Cond = ({} : stdgo._internal.sync.Sync_cond.Cond);
    public var _wCond : stdgo._internal.sync.Sync_cond.Cond = ({} : stdgo._internal.sync.Sync_cond.Cond);
    public var _rDeadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _wDeadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?_softLimit:stdgo.GoInt, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_closed:Bool, ?_rCond:stdgo._internal.sync.Sync_cond.Cond, ?_wCond:stdgo._internal.sync.Sync_cond.Cond, ?_rDeadline:stdgo._internal.time.Time_time.Time, ?_wDeadline:stdgo._internal.time.Time_time.Time) {
        if (_softLimit != null) this._softLimit = _softLimit;
        if (_mu != null) this._mu = _mu;
        if (_buf != null) this._buf = _buf;
        if (_closed != null) this._closed = _closed;
        if (_rCond != null) this._rCond = _rCond;
        if (_wCond != null) this._wCond = _wCond;
        if (_rDeadline != null) this._rDeadline = _rDeadline;
        if (_wDeadline != null) this._wDeadline = _wDeadline;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_softLimit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_rCond", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_conddotcond.__type__stdgodot_internaldotsyncdotSync_conddotCond }, optional : false }, { name : "_wCond", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_conddotcond.__type__stdgodot_internaldotsyncdotSync_conddotCond }, optional : false }, { name : "_rDeadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_wDeadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }])));
    public function __copy__() {
        return new T_bufferedPipe(_softLimit, _mu, _buf, _closed, _rCond, _wCond, _rDeadline, _wDeadline);
    }
}
