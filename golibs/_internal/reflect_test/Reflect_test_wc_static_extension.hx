package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.WC_asInterface) class WC_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<_internal.reflect_test.Reflect_test_wc.WC>):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.reflect_test.Reflect_test_wc.WC> = _w;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2299"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<_internal.reflect_test.Reflect_test_wc.WC>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.reflect_test.Reflect_test_wc.WC> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2296"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
