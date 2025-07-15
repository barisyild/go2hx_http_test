package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_timeoutReader_asInterface) class T_timeoutReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L86"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count++;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L87"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count == ((2 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L88"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.testing.iotest.Iotest_errtimeout.errTimeout };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L90"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_p);
    }
}
