package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.DirectIfaceT_asInterface) class DirectIfaceT_static_extension {
    @:keep
    @:tdfield
    static public function m( _d:_internal.reflect_test.Reflect_test_directifacet.DirectIfaceT):stdgo.GoInt {
        @:recv var _d:_internal.reflect_test.Reflect_test_directifacet.DirectIfaceT = _d?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2701"
        return _d._p.value;
    }
}
