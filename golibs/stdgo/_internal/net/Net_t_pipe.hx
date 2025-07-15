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
@:structInit @:using(stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension) @:using(stdgo._internal.net.Net_t_pipe_static_extension.T_pipe_static_extension) class T_pipe {
    public var _wrMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _rdRx : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
    public var _rdTx : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var _wrTx : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>);
    public var _wrRx : stdgo.Chan<stdgo.GoInt> = (null : stdgo.Chan<stdgo.GoInt>);
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _localDone : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _remoteDone : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _readDeadline : stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline = ({} : stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline);
    public var _writeDeadline : stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline = ({} : stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline);
    public function new(?_wrMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_rdRx:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_rdTx:stdgo.Chan<stdgo.GoInt>, ?_wrTx:stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>, ?_wrRx:stdgo.Chan<stdgo.GoInt>, ?_once:stdgo._internal.sync.Sync_once.Once, ?_localDone:stdgo.Chan<{ }>, ?_remoteDone:stdgo.Chan<{ }>, ?_readDeadline:stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline, ?_writeDeadline:stdgo._internal.net.Net_t_pipedeadline.T_pipeDeadline) {
        if (_wrMu != null) this._wrMu = _wrMu;
        if (_rdRx != null) this._rdRx = _rdRx;
        if (_rdTx != null) this._rdTx = _rdTx;
        if (_wrTx != null) this._wrTx = _wrTx;
        if (_wrRx != null) this._wrRx = _wrRx;
        if (_once != null) this._once = _once;
        if (_localDone != null) this._localDone = _localDone;
        if (_remoteDone != null) this._remoteDone = _remoteDone;
        if (_readDeadline != null) this._readDeadline = _readDeadline;
        if (_writeDeadline != null) this._writeDeadline = _writeDeadline;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_wrMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_rdRx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false }, { name : "_rdTx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_wrTx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false }, { name : "_wrRx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_localDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_remoteDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_readDeadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedeadlinedott_pipedeadline.__type__stdgodot_internaldotnetdotNet_t_pipedeadlinedotT_pipeDeadline }, optional : false }, { name : "_writeDeadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_pipedeadlinedott_pipedeadline.__type__stdgodot_internaldotnetdotNet_t_pipedeadlinedotT_pipeDeadline }, optional : false }])));
    public function __copy__() {
        return new T_pipe(_wrMu, _rdRx, _rdTx, _wrTx, _wrRx, _once, _localDone, _remoteDone, _readDeadline, _writeDeadline);
    }
}
