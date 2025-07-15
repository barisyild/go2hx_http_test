package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder_static_extension.Decoder_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder_static_extension.Decoder_static_extension) class Decoder {
    public var _dynTab : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable);
    public var _emit : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void = null;
    public var _emitEnabled : Bool = false;
    public var _maxStrLen : stdgo.GoInt = 0;
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _saveBuf : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _firstField : Bool = false;
    public function new(?_dynTab:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable, ?_emit:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void, ?_emitEnabled:Bool, ?_maxStrLen:stdgo.GoInt, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_saveBuf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_firstField:Bool) {
        if (_dynTab != null) this._dynTab = _dynTab;
        if (_emit != null) this._emit = _emit;
        if (_emitEnabled != null) this._emitEnabled = _emitEnabled;
        if (_maxStrLen != null) this._maxStrLen = _maxStrLen;
        if (_buf != null) this._buf = _buf;
        if (_saveBuf != null) this._saveBuf = _saveBuf;
        if (_firstField != null) this._firstField = _firstField;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_dynTab", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_dynamictabledott_dynamictable.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_dynamictabledotT_dynamicTable }, optional : false }, { name : "_emit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_headerfielddotheaderfield.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_headerfielddotHeaderField] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_emitEnabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_maxStrLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_saveBuf", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }, optional : false }, { name : "_firstField", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Decoder(_dynTab, _emit, _emitEnabled, _maxStrLen, _buf, _saveBuf, _firstField);
    }
}
