package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Uint64_asInterface) class Uint64_static_extension {
    @:keep
    @:tdfield
    static public function add( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64> = _x;
        trace("funclit");
        throw "not implemented: add";
    }
    @:keep
    @:tdfield
    static public function compareAndSwap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>, _old:stdgo.GoUInt64, _new_:stdgo.GoUInt64):Bool {
        stdgo.Go.globalMutex.acquire();
        final b = _old == _new_;
        if (b) _x._v = _new_;
        stdgo.Go.globalMutex.release();
        return b;
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>, _new_:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64> = _x;
        trace("funclit");
        throw "not implemented: swap";
    }
    @:keep
    @:tdfield
    static public function store( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>, _val:stdgo.GoUInt64):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64> = _x;
    }
    @:keep
    @:tdfield
    static public function load( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__uint64.Uint64>):stdgo.GoUInt64 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v;
        stdgo.Go.globalMutex.release();
        return value;
    }
}
