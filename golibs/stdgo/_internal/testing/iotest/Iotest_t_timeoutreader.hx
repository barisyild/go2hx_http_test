package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_timeoutreader_static_extension.T_timeoutReader_static_extension) @:using(stdgo._internal.testing.iotest.Iotest_t_timeoutreader_static_extension.T_timeoutReader_static_extension) class T_timeoutReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _count : stdgo.GoInt = 0;
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_count:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_timeoutReader(_r, _count);
    }
}
