package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Bool__asInterface) class Bool__static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>, _old:Bool, _new_:Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_> = _x;
        trace("funclit");
        throw "not implemented: compareAndSwap";
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>, _new_:Bool):Bool {
        stdgo.Go.globalMutex.acquire();
        final old = @:privateAccess _x._v;
        _x._v = _new_ ? 1 : 0;
        stdgo.Go.globalMutex.release();
        return old == 1;
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>, _val:Bool):Void stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0);
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__bool_.Bool_>):Bool {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v == 1;
        stdgo.Go.globalMutex.release();
        return value;
    }
}
