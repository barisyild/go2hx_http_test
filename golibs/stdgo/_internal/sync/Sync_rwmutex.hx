package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension) @:using(stdgo._internal.sync.Sync_rwmutex_static_extension.RWMutex_static_extension) class RWMutex {
    public var _w : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _writerSem : stdgo.GoUInt32 = 0;
    public var _readerSem : stdgo.GoUInt32 = 0;
    public var _readerCount : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _readerWait : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    @:local
    var rmutex = #if target.threaded new sys.thread.Semaphore(1) #else null #end;
    @:local
    var wmutex = #if target.threaded new sys.thread.Semaphore(1) #else null #end;
    public function new(?_w:stdgo._internal.sync.Sync_mutex.Mutex, ?_writerSem:stdgo.GoUInt32, ?_readerSem:stdgo.GoUInt32, ?_readerCount:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_readerWait:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?rmutex, ?wmutex) {
        if (_w != null) this._w = _w;
        if (_writerSem != null) this._writerSem = _writerSem;
        if (_readerSem != null) this._readerSem = _readerSem;
        if (_readerCount != null) this._readerCount = _readerCount;
        if (_readerWait != null) this._readerWait = _readerWait;
        if (rmutex != null) this.rmutex = rmutex;
        if (wmutex != null) this.wmutex = wmutex;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_writerSem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_readerSem", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_readerCount", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__int32dotint32.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__int32dotInt32 }, optional : false }, { name : "_readerWait", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__int32dotint32.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__int32dotInt32 }, optional : false }])));
    public function __copy__() {
        return new RWMutex(_w, _writerSem, _readerSem, _readerCount, _readerWait, rmutex, wmutex);
    }
}
