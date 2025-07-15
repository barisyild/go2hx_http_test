package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension) @:using(stdgo._internal.sync.Sync_waitgroup_static_extension.WaitGroup_static_extension) class WaitGroup {
    public var _noCopy : stdgo._internal.sync.Sync_t_nocopy.T_noCopy = ({} : stdgo._internal.sync.Sync_t_nocopy.T_noCopy);
    public var _state : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public var _sema : stdgo.GoUInt32 = 0;
    @:local
    var counter : stdgo.GoUInt = 0;
    @:local
    var mutex = #if target.threaded new sys.thread.Mutex() #else null #end;
    public function new(?_noCopy:stdgo._internal.sync.Sync_t_nocopy.T_noCopy, ?_state:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_sema:stdgo.GoUInt32, ?counter:stdgo.GoUInt, ?mutex) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_state != null) this._state = _state;
        if (_sema != null) this._sema = _sema;
        if (counter != null) this.counter = counter;
        if (mutex != null) this.mutex = mutex;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotSync_t_nocopydotT_noCopy }, optional : false }, { name : "_state", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__uint64dotuint64.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__uint64dotUint64 }, optional : false }, { name : "_sema", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new WaitGroup(_noCopy, _state, _sema, counter, mutex);
    }
}
