package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension) class Reader {
    @:embedded
    public var header : stdgo._internal.compress.gzip.Gzip_header.Header = ({} : stdgo._internal.compress.gzip.Gzip_header.Header);
    public var _r : stdgo._internal.compress.flate.Flate_reader.Reader = (null : stdgo._internal.compress.flate.Flate_reader.Reader);
    public var _decompressor : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _digest : stdgo.GoUInt32 = 0;
    public var _size : stdgo.GoUInt32 = 0;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512).__setNumber32__();
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _multistream : Bool = false;
    public function new(?header:stdgo._internal.compress.gzip.Gzip_header.Header, ?_r:stdgo._internal.compress.flate.Flate_reader.Reader, ?_decompressor:stdgo._internal.io.Io_readcloser.ReadCloser, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool) {
        if (header != null) this.header = header;
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_size != null) this._size = _size;
        if (_buf != null) this._buf = _buf;
        if (_err != null) this._err = _err;
        if (_multistream != null) this._multistream = _multistream;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "header", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotgzipdotgzip_headerdotheader.__type__stdgodot_internaldotcompressdotgzipdotGzip_headerdotHeader }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_readerdotreader.__type__stdgodot_internaldotcompressdotflatedotFlate_readerdotReader }, optional : false }, { name : "_decompressor", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false }, { name : "_digest", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 512) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_multistream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Reader(header, _r, _decompressor, _digest, _size, _buf, _err, _multistream);
    }
}
