package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_iter_static_extension.Iter_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_iter_static_extension.Iter_static_extension) class Iter {
    public var _rb : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128).__setNumber32__();
    public var _info : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
    public var _next : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc = (null : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc);
    public var _asciiF : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc = (null : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc);
    public var _p : stdgo.GoInt = 0;
    public var _multiSeg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_rb:_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties, ?_next:_internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc, ?_asciiF:_internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc, ?_p:stdgo.GoInt, ?_multiSeg:stdgo.Slice<stdgo.GoUInt8>) {
        if (_rb != null) this._rb = _rb;
        if (_buf != null) this._buf = _buf;
        if (_info != null) this._info = _info;
        if (_next != null) this._next = _next;
        if (_asciiF != null) this._asciiF = _asciiF;
        if (_p != null) this._p = _p;
        if (_multiSeg != null) this._multiSeg = _multiSeg;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rb", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 128) }, optional : false }, { name : "_info", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_propertiesdotproperties.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_propertiesdotProperties }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_iterfuncdott_iterfunc.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_iterfuncdotT_iterFunc }, optional : false }, { name : "_asciiF", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_iterfuncdott_iterfunc.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_iterfuncdotT_iterFunc }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_multiSeg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Iter(_rb, _buf, _info, _next, _asciiF, _p, _multiSeg);
    }
}
