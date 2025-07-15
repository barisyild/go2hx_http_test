package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.Tm4_asInterface) class Tm4_static_extension {
    @:keep
    @:tdfield
    static public function m( _t4:_internal.reflect_test.Reflect_test_tm4.Tm4, _x:stdgo.GoInt, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.GoInt; } {
        @:recv var _t4:_internal.reflect_test.Reflect_test_tm4.Tm4 = _t4?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2785"
        return { _0 : _b, _1 : (_x + (40 : stdgo.GoInt) : stdgo.GoInt) };
    }
}
