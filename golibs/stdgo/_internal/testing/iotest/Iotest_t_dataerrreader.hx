package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.testing.iotest.Iotest_t_dataerrreader_static_extension.T_dataErrReader_static_extension) @:using(stdgo._internal.testing.iotest.Iotest_t_dataerrreader_static_extension.T_dataErrReader_static_extension) class T_dataErrReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _unread : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_unread:stdgo.Slice<stdgo.GoUInt8>, ?_data:stdgo.Slice<stdgo.GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_unread != null) this._unread = _unread;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_unread", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_dataErrReader(_r, _unread, _data);
    }
}
