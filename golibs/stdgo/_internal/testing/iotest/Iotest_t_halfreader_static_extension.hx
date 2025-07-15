package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_halfReader_asInterface) class T_halfReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_halfreader.T_halfReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L39"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read((_p.__slice__((0 : stdgo.GoInt), ((((_p.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
