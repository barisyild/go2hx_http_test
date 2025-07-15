package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder_static_extension.Encoder_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _dynTab : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable);
    public var _minSize : stdgo.GoUInt32 = 0;
    public var _maxSizeLimit : stdgo.GoUInt32 = 0;
    public var _tableSizeUpdate : Bool = false;
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_dynTab:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable, ?_minSize:stdgo.GoUInt32, ?_maxSizeLimit:stdgo.GoUInt32, ?_tableSizeUpdate:Bool, ?_w:stdgo._internal.io.Io_writer.Writer, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_dynTab != null) this._dynTab = _dynTab;
        if (_minSize != null) this._minSize = _minSize;
        if (_maxSizeLimit != null) this._maxSizeLimit = _maxSizeLimit;
        if (_tableSizeUpdate != null) this._tableSizeUpdate = _tableSizeUpdate;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_dynTab", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_dynamictabledott_dynamictable.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_dynamictabledotT_dynamicTable }, optional : false }, { name : "_minSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_maxSizeLimit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_tableSizeUpdate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Encoder(_dynTab, _minSize, _maxSizeLimit, _tableSizeUpdate, _w, _buf);
    }
}
