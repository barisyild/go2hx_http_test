package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tsmallp_asInterface) class Tsmallp_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function m( _p:stdgo.Pointer<_internal.reflect_test.Reflect_test_tsmallp.Tsmallp>, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2746"
        return { _0 : _b, _1 : (_x + (_p.value : stdgo.GoInt) : stdgo.GoInt) };
    }
}
