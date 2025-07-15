package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.XM_asInterface) class XM_static_extension {
    @:keep
    @:tdfield
    static public function string( _:stdgo.Ref<_internal.reflect_test.Reflect_test_xm.XM>):stdgo.GoString {
        @:recv var _:stdgo.Ref<_internal.reflect_test.Reflect_test_xm.XM> = _;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7240"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
