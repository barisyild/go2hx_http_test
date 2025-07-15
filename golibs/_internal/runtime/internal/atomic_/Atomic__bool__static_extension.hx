package _internal.runtime.internal.atomic_;
@:keep @:allow(_internal.runtime.internal.atomic_.Atomic_.Bool__asInterface) class Bool__static_extension {
    @:keep
    @:tdfield
    static public function store( _b:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_>, _value:Bool):Void {
        @:recv var _b:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_> = _b;
        var _s = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L176"
        if (_value) {
            _s = (1 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L179"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.store(_s);
    }
    @:keep
    @:tdfield
    static public function load( _b:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_>):Bool {
        @:recv var _b:stdgo.Ref<_internal.runtime.internal.atomic_.Atomic__bool_.Bool_> = _b;
        //"file:///Users/o/.go/go1.21.3/src/runtime/internal/atomic/types.go#L168"
        return (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._u.load() != ((0 : stdgo.GoUInt8));
    }
}
