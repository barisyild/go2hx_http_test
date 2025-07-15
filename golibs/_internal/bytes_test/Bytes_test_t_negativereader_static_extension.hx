package _internal.bytes_test;
@:keep @:allow(_internal.bytes_test.Bytes_test.T_negativeReader_asInterface) class T_negativeReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<_internal.bytes_test.Bytes_test_t_negativereader.T_negativeReader>, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.bytes_test.Bytes_test_t_negativereader.T_negativeReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L23"
        return { _0 : (-1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
}
