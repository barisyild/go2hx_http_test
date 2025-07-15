package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_halfreader_static_extension.T_halfReader_static_extension) @:using(stdgo._internal.testing.iotest.Iotest_t_halfreader_static_extension.T_halfReader_static_extension) class T_halfReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader) {
        if (_r != null) this._r = _r;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])));
    public function __copy__() {
        return new T_halfReader(_r);
    }
}
