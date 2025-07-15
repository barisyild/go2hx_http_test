package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_oneByteReader_asInterface) class T_oneByteReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_onebytereader.T_oneByteReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L24"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L25"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L27"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read((_p.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
