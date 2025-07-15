package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Pool_asInterface) class Pool_static_extension {
    @:keep
    @:tdfield
    static public function _pinSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_t_poollocal.T_poolLocal>; var _1 : stdgo.GoInt; } return { _0 : null, _1 : 0 };
    @:keep
    @:tdfield
    static public function _pin( _p:stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>):{ var _0 : stdgo.Ref<stdgo._internal.sync.Sync_t_poollocal.T_poolLocal>; var _1 : stdgo.GoInt; } throw "Pool:sync._pin is not yet implemented";
    @:keep
    @:tdfield
    static public function _getSlow( _p:stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>, _pid:stdgo.GoInt):stdgo.AnyInterface throw "Pool:sync._getSlow is not yet implemented";
    @:keep
    @:tdfield
    static public function get( _p:stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>):stdgo.AnyInterface {
        var obj = #if target.threaded @:privateAccess _p.pool.pop(false) #else @:privateAccess _p.pool.pop() #end;
        if (obj == null && @:privateAccess _p.new_ != null) obj = @:privateAccess _p.new_();
        return obj;
    }
    @:keep
    @:tdfield
    static public function put( _p:stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>, _x:stdgo.AnyInterface):Void {
        @:privateAccess _p.pool.push(_x);
    }
}
