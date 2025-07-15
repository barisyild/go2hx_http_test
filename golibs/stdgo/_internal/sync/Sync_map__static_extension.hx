package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Map__asInterface) class Map__static_extension {
    @:keep
    @:tdfield
    static public function _dirtyLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void {
        trace("dirtyLocked not implemented");
    }
    @:keep
    @:tdfield
    static public function _missLocked( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):Void throw "Map_:sync._missLocked is not yet implemented";
    @:keep
    @:tdfield
    static public function range( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _f:(stdgo.AnyInterface, stdgo.AnyInterface) -> Bool):Void {
        for (key => value in @:privateAccess _m.map) {
            if (!_f(key, value)) break;
        };
    }
    @:keep
    @:tdfield
    static public function compareAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool throw "Map_:sync.compareAndDelete is not yet implemented";
    @:keep
    @:tdfield
    static public function compareAndSwap( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool throw "Map_:sync.compareAndSwap is not yet implemented";
    @:keep
    @:tdfield
    static public function swap( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:privateAccess _m._mu.lock();
        if (@:privateAccess _m.map.exists(_key)) {
            final oldValue = @:privateAccess _m.map.get(_key);
            @:privateAccess _m.map.set(_key, _value);
            @:privateAccess _m._mu.unlock();
            return { _0 : oldValue, _1 : true };
        } else {
            @:privateAccess _m.map.set(_key, _value);
            @:privateAccess _m._mu.unlock();
            return { _0 : null, _1 : false };
        };
    }
    @:keep
    @:tdfield
    static public function delete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):Void {
        @:privateAccess _m._mu.lock();
        @:privateAccess _m.map.remove(_key);
        @:privateAccess _m._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function loadAndDelete( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:privateAccess _m._mu.lock();
        if (@:privateAccess _m.map.exists(_key)) {
            final oldValue = @:privateAccess _m.map.get(_key);
            @:privateAccess _m.map.remove(_key);
            @:privateAccess _m._mu.unlock();
            return { _0 : oldValue, _1 : true };
        } else {
            @:privateAccess _m._mu.unlock();
            return { _0 : null, _1 : false };
        };
    }
    @:keep
    @:tdfield
    static public function loadOrStore( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:privateAccess _m._mu.lock();
        if (@:privateAccess _m.map.exists(_key)) {
            final oldValue = @:privateAccess _m.map.get(_key);
            @:privateAccess _m._mu.unlock();
            return { _0 : oldValue, _1 : true };
        } else {
            @:privateAccess _m.map.set(_key, _value);
            @:privateAccess _m._mu.unlock();
            return { _0 : _value, _1 : false };
        };
    }
    @:keep
    @:tdfield
    static public function store( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:privateAccess _m._mu.lock();
        @:privateAccess _m.map.set(_key, _value);
        @:privateAccess _m._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function load( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        if (@:privateAccess _m.map.exists(_key)) {
            return { _0 : @:privateAccess _m.map.get(_key), _1 : true };
        } else {
            return { _0 : null, _1 : false };
        };
    }
    @:keep
    @:tdfield
    static public function _loadReadOnly( _m:stdgo.Ref<stdgo._internal.sync.Sync_map_.Map_>):stdgo._internal.sync.Sync_t_readonly.T_readOnly throw "Map_:sync._loadReadOnly is not yet implemented";
}
