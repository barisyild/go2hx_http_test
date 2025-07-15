package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_properties_static_extension.Properties_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_properties_static_extension.Properties_static_extension) class Properties {
    public var _pos : stdgo.GoUInt8 = 0;
    public var _size : stdgo.GoUInt8 = 0;
    public var _ccc : stdgo.GoUInt8 = 0;
    public var _tccc : stdgo.GoUInt8 = 0;
    public var _nLead : stdgo.GoUInt8 = 0;
    public var _flags : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo);
    public var _index : stdgo.GoUInt16 = 0;
    public function new(?_pos:stdgo.GoUInt8, ?_size:stdgo.GoUInt8, ?_ccc:stdgo.GoUInt8, ?_tccc:stdgo.GoUInt8, ?_nLead:stdgo.GoUInt8, ?_flags:_internal.golangdotorg.x.text.unicode.norm.Norm_t_qcinfo.T_qcInfo, ?_index:stdgo.GoUInt16) {
        if (_pos != null) this._pos = _pos;
        if (_size != null) this._size = _size;
        if (_ccc != null) this._ccc = _ccc;
        if (_tccc != null) this._tccc = _tccc;
        if (_nLead != null) this._nLead = _nLead;
        if (_flags != null) this._flags = _flags;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_ccc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_tccc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_nLead", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_flags", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_qcinfodott_qcinfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_qcinfodotT_qcInfo }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new Properties(_pos, _size, _ccc, _tccc, _nLead, _flags, _index);
    }
}
