package stdgo._internal.sync.atomic_;
@:keep @:allow(stdgo._internal.sync.atomic_.Atomic_.Value_asInterface) class Value_static_extension {
    @:keep
    @:tdfield
    static public function compareAndSwap( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _old:stdgo.AnyInterface, _new_:stdgo.AnyInterface):Bool {
        @:recv var _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value> = _v;
        trace("funclit");
        throw "not implemented: compareAndSwap";
    }
    @:keep
    @:tdfield
    static public function swap( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _new_:stdgo.AnyInterface):stdgo.AnyInterface {
        @:recv var _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value> = _v;
        trace("funclit");
        throw "not implemented: swap";
    }
    @:keep
    @:tdfield
    static public function store( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>, _val:stdgo.AnyInterface):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value> = _v;
    }
    @:keep
    @:tdfield
    static public function load( _v:stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__value.Value>):stdgo.AnyInterface {
        return @:privateAccess _v._v;
    }
}
