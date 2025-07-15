package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_stringReader_asInterface) class T_stringReader_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function read( _r:stdgo.Pointer<stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _b.__copyTo__(_r.value);
        _r.value = ((_r.value).__slice__(_n) : stdgo._internal.fmt.Fmt_t_stringreader.T_stringReader);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L89"
        if (_n == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan.go#L92"
        return { _0 : _n, _1 : _err };
    }
}
