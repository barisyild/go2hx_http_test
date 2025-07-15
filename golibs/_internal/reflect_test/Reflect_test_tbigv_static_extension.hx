package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tbigv_asInterface) class Tbigv_static_extension {
    @:keep
    @:tdfield
    static public function m( _v:_internal.reflect_test.Reflect_test_tbigv.Tbigv, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _v:_internal.reflect_test.Reflect_test_tbigv.Tbigv = _v?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2758"
        return { _0 : _b, _1 : ((_x + (_v[(0 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) + (_v[(1 : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) };
    }
}
