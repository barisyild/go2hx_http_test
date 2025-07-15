package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_t_decoder_static_extension.T_decoder_static_extension) @:using(stdgo._internal.encoding.base64.Base64_t_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768).__setNumber32__();
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, ?_r:stdgo._internal.io.Io_reader.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
        if (_enc != null) this._enc = _enc;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
        if (_outbuf != null) this._outbuf = _outbuf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_readErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_enc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_encodingdotencoding.__type__stdgodot_internaldotencodingdotbase64dotBase64_encodingdotEncoding }) }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1024) }, optional : false }, { name : "_nbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_outbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 768) }, optional : false }])));
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
}
