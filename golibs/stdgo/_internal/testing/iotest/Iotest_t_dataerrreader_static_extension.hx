package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_dataErrReader_asInterface) class T_dataErrReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_dataerrreader.T_dataErrReader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L58"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L59"
            if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread.length) == ((0 : stdgo.GoInt))) {
                var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data), _n1:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._data.__slice__((0 : stdgo.GoInt), _n1) : stdgo.Slice<stdgo.GoUInt8>);
                _err = _err1;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L64"
            if (((_n > (0 : stdgo.GoInt) : Bool) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L65"
                break;
            };
            _n = _p.__copyTo__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unread.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L70"
        return { _0 : _n, _1 : _err };
    }
}
