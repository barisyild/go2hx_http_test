package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tsmallv_asInterface) class Tsmallv_static_extension {
    @:keep
    @:tdfield
    static public function m( _v:_internal.reflect_test.Reflect_test_tsmallv.Tsmallv, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _v:_internal.reflect_test.Reflect_test_tsmallv.Tsmallv = _v;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2742"
        return { _0 : _b, _1 : (_x + (_v : stdgo.GoInt) : stdgo.GoInt) };
    }
}
