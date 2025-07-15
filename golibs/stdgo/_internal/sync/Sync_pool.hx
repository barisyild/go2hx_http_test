package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension) @:using(stdgo._internal.sync.Sync_pool_static_extension.Pool_static_extension) class Pool {
    public var _noCopy : stdgo._internal.sync.Sync_t_nocopy.T_noCopy = ({} : stdgo._internal.sync.Sync_t_nocopy.T_noCopy);
    public var _local : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _localSize : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var _victim : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _victimSize : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var new_ : () -> stdgo.AnyInterface = null;
    @:local
    var pool = #if target.threaded new sys.thread.Deque<stdgo.AnyInterface>() #else new Array<stdgo.AnyInterface>() #end;
    public function new(?_noCopy:stdgo._internal.sync.Sync_t_nocopy.T_noCopy, ?_local:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_localSize:stdgo.GoUIntptr, ?_victim:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_victimSize:stdgo.GoUIntptr, ?new_:() -> stdgo.AnyInterface, ?pool) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_local != null) this._local = _local;
        if (_localSize != null) this._localSize = _localSize;
        if (_victim != null) this._victim = _victim;
        if (_victimSize != null) this._victimSize = _victimSize;
        if (new_ != null) this.new_ = new_;
        if (pool != null) this.pool = pool;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotSync_t_nocopydotT_noCopy }, optional : false }, { name : "_local", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_localSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "_victim", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_victimSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "new_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.interfaceType(true, [])] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new Pool(_noCopy, _local, _localSize, _victim, _victimSize, new_, pool);
    }
}
