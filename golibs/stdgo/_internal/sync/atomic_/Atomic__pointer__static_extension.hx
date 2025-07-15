package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Pointer__asInterface) class Pointer__static_extension {
    @:keep
    @:tdfield
    overload inline extern static public function compareAndSwap<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool return compareAndSwap__tp__0(_x, _old, _new_);
    @:tdfield
    static public function compareAndSwap__tp__0<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _old:stdgo.Pointer<T_>, _new_:stdgo.Pointer<T_>):Bool {
        stdgo.Go.globalMutex.acquire();
        final b = _old == _new_;
        if (b) _x._v = new stdgo.AnyInterface(_new_, null);
        stdgo.Go.globalMutex.release();
        return b;
    }
    @:keep
    @:tdfield
    overload inline extern static public function swap<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _new_:stdgo.Pointer<T_>):stdgo.Pointer<T_> return swap__tp__0(_x, _new_);
    @:tdfield
    static public function swap__tp__0<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _new_:stdgo.Pointer<T_>):stdgo.Pointer<T_> {
        stdgo.Go.globalMutex.acquire();
        var old:Dynamic = @:privateAccess _x._v;
        _x._v = new stdgo.AnyInterface(_new_, null);
        stdgo.Go.globalMutex.release();
        return stdgo.Go.pointer(old);
    }
    @:keep
    @:tdfield
    overload inline extern static public function store<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _val:stdgo.Pointer<T_>):Void store__tp__0(_x, _val);
    @:tdfield
    static public function store__tp__0<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>, _val:stdgo.Pointer<T_>):Void {
        stdgo.Go.globalMutex.acquire();
        _x._v = new stdgo.AnyInterface(_val, null);
        stdgo.Go.globalMutex.release();
    }
    @:keep
    @:tdfield
    overload inline extern static public function load<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>):stdgo.Pointer<T_> return load__tp__0(_x);
    @:tdfield
    static public function load__tp__0<T_>( _x:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<T_>>):stdgo.Pointer<T_> {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _x._v.__toRef__();
        stdgo.Go.globalMutex.release();
        return value;
    }
}
