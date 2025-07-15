package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_t_chunkedreader_static_extension.T_chunkedReader_static_extension) @:using(stdgo._internal.net.http.internal.Internal_t_chunkedreader_static_extension.T_chunkedReader_static_extension) class T_chunkedReader {
    public var _r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _n : stdgo.GoUInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(2, 2).__setNumber32__();
    public var _checkEnd : Bool = false;
    public function new(?_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_n:stdgo.GoUInt64, ?_err:stdgo.Error, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_checkEnd:Bool) {
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_err != null) this._err = _err;
        if (_buf != null) this._buf = _buf;
        if (_checkEnd != null) this._checkEnd = _checkEnd;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 2) }, optional : false }, { name : "_checkEnd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_chunkedReader(_r, _n, _err, _buf, _checkEnd);
    }
}
