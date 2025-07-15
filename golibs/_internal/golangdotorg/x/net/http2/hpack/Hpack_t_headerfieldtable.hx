package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable_static_extension.T_headerFieldTable_static_extension) @:using(_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable_static_extension.T_headerFieldTable_static_extension) class T_headerFieldTable {
    public var _ents : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> = (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
    public var _evictCount : stdgo.GoUInt64 = 0;
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
    public var _byNameValue : stdgo.GoMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64> = (({
        final x:stdgo.GoMap.GoObjectMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64> = null;
        cast x;
    } : stdgo.GoMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64>));
    public function new(?_ents:stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>, ?_evictCount:stdgo.GoUInt64, ?_byName:stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>, ?_byNameValue:stdgo.GoMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64>) {
        if (_ents != null) this._ents = _ents;
        if (_evictCount != null) this._evictCount = _evictCount;
        if (_byName != null) this._byName = _byName;
        if (_byNameValue != null) this._byNameValue = _byNameValue;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_ents", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_headerfielddotheaderfield.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_headerfielddotHeaderField }) }, optional : false }, { name : "_evictCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_byName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }) }, optional : false }, { name : "_byNameValue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_pairnamevaluedott_pairnamevalue.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_pairnamevaluedotT_pairNameValue }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_headerFieldTable(_ents, _evictCount, _byName, _byNameValue);
    }
}
