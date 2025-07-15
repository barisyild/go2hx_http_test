package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_map__static_extension.Map__static_extension) @:using(stdgo._internal.sync.Sync_map__static_extension.Map__static_extension) class Map_ {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _read : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly>);
    public var _dirty : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>);
    public var _misses : stdgo.GoInt = 0;
    @:local
    var map = {
        final m = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
        m.__defaultValue__ = () -> null;
        m;
    };
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_read:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.sync.Sync_t_readonly.T_readOnly>, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.Ref<stdgo._internal.sync.Sync_t_entry.T_entry>>, ?_misses:stdgo.GoInt, ?map) {
        if (_mu != null) this._mu = _mu;
        if (_read != null) this._read = _read;
        if (_dirty != null) this._dirty = _dirty;
        if (_misses != null) this._misses = _misses;
        if (map != null) this.map = map;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_read", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__pointer_dotpointer_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__pointer_dotPointer_ }, optional : false }, { name : "_dirty", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_t_entrydott_entry.__type__stdgodot_internaldotsyncdotSync_t_entrydotT_entry }) }) }, optional : false }, { name : "_misses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Map_(_mu, _read, _dirty, _misses, map);
    }
}
