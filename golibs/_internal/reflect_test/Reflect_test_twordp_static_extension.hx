package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Twordp_asInterface) class Twordp_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function m( _p:stdgo.Pointer<_internal.reflect_test.Reflect_test_twordp.Twordp>, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2754"
        return { _0 : _b, _1 : (_x + (_p.value : stdgo.GoInt) : stdgo.GoInt) };
    }
}
