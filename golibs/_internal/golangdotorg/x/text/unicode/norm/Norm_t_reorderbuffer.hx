package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer_static_extension.T_reorderBuffer_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer_static_extension.T_reorderBuffer_static_extension) class T_reorderBuffer {
    public var _rune : stdgo.GoArray<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties> = new stdgo.GoArray<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>(32, 32, ...[for (i in 0 ... (32 > 32 ? 32 : 32 : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties)]);
    public var _byte : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128).__setNumber32__();
    public var _nbyte : stdgo.GoUInt8 = 0;
    public var _ss : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
    public var _nrune : stdgo.GoInt = 0;
    public var _f : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo);
    public var _src : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
    public var _nsrc : stdgo.GoInt = 0;
    public var _tmpBytes : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _flushF : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> -> Bool = null;
    public function new(?_rune:stdgo.GoArray<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>, ?_byte:stdgo.GoArray<stdgo.GoUInt8>, ?_nbyte:stdgo.GoUInt8, ?_ss:_internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe, ?_nrune:stdgo.GoInt, ?_f:_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo, ?_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, ?_nsrc:stdgo.GoInt, ?_tmpBytes:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_flushF:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> -> Bool) {
        if (_rune != null) this._rune = _rune;
        if (_byte != null) this._byte = _byte;
        if (_nbyte != null) this._nbyte = _nbyte;
        if (_ss != null) this._ss = _ss;
        if (_nrune != null) this._nrune = _nrune;
        if (_f != null) this._f = _f;
        if (_src != null) this._src = _src;
        if (_nsrc != null) this._nsrc = _nsrc;
        if (_tmpBytes != null) this._tmpBytes = _tmpBytes;
        if (_out != null) this._out = _out;
        if (_flushF != null) this._flushF = _flushF;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_rune", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_propertiesdotproperties.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_propertiesdotProperties }, 32) }, optional : false },
{ name : "_byte", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 128) }, optional : false },
{ name : "_nbyte", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "_ss", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_streamsafedott_streamsafe.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_streamsafedotT_streamSafe }, optional : false },
{ name : "_nrune", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo }, optional : false },
{ name : "_src", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_inputdott_input.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_inputdotT_input }, optional : false },
{ name : "_nsrc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_tmpBytes", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_inputdott_input.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_inputdotT_input }, optional : false },
{ name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_flushF", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_reorderBuffer(
_rune,
_byte,
_nbyte,
_ss,
_nrune,
_f,
_src,
_nsrc,
_tmpBytes,
_out,
_flushF);
    }
}
