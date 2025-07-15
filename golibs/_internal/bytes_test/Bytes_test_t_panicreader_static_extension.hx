package _internal.bytes_test;
@:keep @:allow(_internal.bytes_test.Bytes_test.T_panicReader_asInterface) class T_panicReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:_internal.bytes_test.Bytes_test_t_panicreader.T_panicReader, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:_internal.bytes_test.Bytes_test_t_panicreader.T_panicReader = _r?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L270"
        if (_r._panic) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L271"
            throw new stdgo.AnyInterface(("oops" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L273"
        return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
    }
}
