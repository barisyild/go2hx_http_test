package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Int32_asInterface) class Int32_static_extension {
    @:keep
    @:tdfield
    static public function add( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _delta:stdgo.GoInt32):stdgo.GoInt32 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v += _delta;
        stdgo.Go.globalMutex.release();
        return value;
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _old:stdgo.GoInt32, _new_:stdgo.GoInt32):Bool {
        stdgo.Go.globalMutex.acquire();
        final b = _old == _new_;
        if (b) _x._v = _new_;
        stdgo.Go.globalMutex.release();
        return b;
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _new_:stdgo.GoInt32):stdgo.GoInt32 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32> = _x;
        trace("funclit");
        throw "not implemented: swap";
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>, _val:stdgo.GoInt32):Void {
        stdgo.Go.globalMutex.acquire();
        _x._v = _val;
        stdgo.Go.globalMutex.release();
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__int32.Int32>):stdgo.GoInt32 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v;
        stdgo.Go.globalMutex.release();
        return value;
    }
}
