package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tbigp_asInterface) class Tbigp_static_extension {
    @:keep
    @:tdfield
    static public function m( _p:stdgo.Ref<_internal.reflect_test.Reflect_test_tbigp.Tbigp>, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _p:stdgo.Ref<_internal.reflect_test.Reflect_test_tbigp.Tbigp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2762"
        return { _0 : _b, _1 : ((_x + (_p[(0 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) + (_p[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) };
    }
}
