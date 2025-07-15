package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader_static_extension.T_normReader_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader_static_extension.T_normReader_static_extension) class T_normReader {
    public var _rb : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _inbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _bufStart : stdgo.GoInt = 0;
    public var _lastBoundary : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_rb:_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer, ?_r:stdgo._internal.io.Io_reader.Reader, ?_inbuf:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.Slice<stdgo.GoUInt8>, ?_bufStart:stdgo.GoInt, ?_lastBoundary:stdgo.GoInt, ?_err:stdgo.Error) {
        if (_rb != null) this._rb = _rb;
        if (_r != null) this._r = _r;
        if (_inbuf != null) this._inbuf = _inbuf;
        if (_outbuf != null) this._outbuf = _outbuf;
        if (_bufStart != null) this._bufStart = _bufStart;
        if (_lastBoundary != null) this._lastBoundary = _lastBoundary;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rb", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_inbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_outbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_bufStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_lastBoundary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_normReader(_rb, _r, _inbuf, _outbuf, _bufStart, _lastBoundary, _err);
    }
}
