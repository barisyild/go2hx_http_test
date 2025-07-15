package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension) @:using(stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension) class Writer {
    @:embedded
    public var header : stdgo._internal.compress.gzip.Gzip_header.Header = ({} : stdgo._internal.compress.gzip.Gzip_header.Header);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _level : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
    public var _digest : stdgo.GoUInt32 = 0;
    public var _size : stdgo.GoUInt32 = 0;
    public var _closed : Bool = false;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?header:stdgo._internal.compress.gzip.Gzip_header.Header, ?_w:stdgo._internal.io.Io_writer.Writer, ?_level:stdgo.GoInt, ?_wroteHeader:Bool, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_closed:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error) {
        if (header != null) this.header = header;
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_size != null) this._size = _size;
        if (_closed != null) this._closed = _closed;
        if (_buf != null) this._buf = _buf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "header", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotgzipdotgzip_headerdotheader.__type__stdgodot_internaldotcompressdotgzipdotGzip_headerdotHeader }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_level", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_wroteHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_compressor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_writerdotwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_writerdotWriter }) }, optional : false }, { name : "_digest", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 10) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new Writer(header, _w, _level, _wroteHeader, _compressor, _digest, _size, _closed, _buf, _err);
    }
}
