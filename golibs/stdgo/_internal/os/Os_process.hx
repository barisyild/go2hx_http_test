package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_process_static_extension.Process_static_extension) @:using(stdgo._internal.os.Os_process_static_extension.Process_static_extension) class Process {
    public var pid : stdgo.GoInt = 0;
    public var _handle : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _isdone : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _sigMu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public function new(?pid:stdgo.GoInt, ?_handle:stdgo.GoUIntptr, ?_isdone:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_sigMu:stdgo._internal.sync.Sync_rwmutex.RWMutex) {
        if (pid != null) this.pid = pid;
        if (_handle != null) this._handle = _handle;
        if (_isdone != null) this._isdone = _isdone;
        if (_sigMu != null) this._sigMu = _sigMu;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "pid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_handle", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_isdone", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false }, { name : "_sigMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_rwmutexdotrwmutex.__type__stdgodot_internaldotsyncdotSync_rwmutexdotRWMutex }, optional : false }])));
    public function __copy__() {
        return new Process(pid, _handle, _isdone, _sigMu);
    }
}
