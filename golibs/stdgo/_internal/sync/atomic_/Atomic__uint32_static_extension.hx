package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Uint32_asInterface) class Uint32_static_extension {
    @:keep
    @:tdfield
    static public function add( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32> = _x;
        trace("funclit");
        throw "not implemented: add";
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>, _old:stdgo.GoUInt32, _new_:stdgo.GoUInt32):Bool {
        stdgo.Go.globalMutex.acquire();
        final b = _old == _new_;
        if (b) _x._v = _new_;
        stdgo.Go.globalMutex.release();
        return b;
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>, _new_:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32> = _x;
        trace("funclit");
        throw "not implemented: swap";
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>, _val:stdgo.GoUInt32):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32> = _x;
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint32.Uint32>):stdgo.GoUInt32 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v;
        stdgo.Go.globalMutex.release();
        return value;
    }
}
