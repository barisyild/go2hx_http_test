package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable_static_extension.T_dynamicTable_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable_static_extension.T_dynamicTable_static_extension) class T_dynamicTable {
    public var _table : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable);
    public var _size : stdgo.GoUInt32 = 0;
    public var _maxSize : stdgo.GoUInt32 = 0;
    public var _allowedMaxSize : stdgo.GoUInt32 = 0;
    public function new(?_table:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable, ?_size:stdgo.GoUInt32, ?_maxSize:stdgo.GoUInt32, ?_allowedMaxSize:stdgo.GoUInt32) {
        if (_table != null) this._table = _table;
        if (_size != null) this._size = _size;
        if (_maxSize != null) this._maxSize = _maxSize;
        if (_allowedMaxSize != null) this._allowedMaxSize = _allowedMaxSize;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_table", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_headerfieldtabledott_headerfieldtable.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_headerfieldtabledotT_headerFieldTable }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_maxSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_allowedMaxSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dynamicTable(_table, _size, _maxSize, _allowedMaxSize);
    }
}
