package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_errReader_asInterface) class T_errReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_errreader.T_errReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_errreader.T_errReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L103"
        return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
    }
}
