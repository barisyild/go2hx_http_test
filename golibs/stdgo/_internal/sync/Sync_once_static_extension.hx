package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Once_asInterface) class Once_static_extension {
    @:keep
    @:tdfield
    static public function _doSlow( _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once>, _f:() -> Void):Void throw "Once:sync._doSlow is not yet implemented";
    @:keep
    @:tdfield
    static public function do_( _o:stdgo.Ref<stdgo._internal.sync.Sync_once.Once>, _f:() -> Void):Void {
        if (@:privateAccess _o._done == 1) return;
        @:privateAccess _o._done = 1;
        _f();
    }
}
