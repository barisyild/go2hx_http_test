package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_reader_static_extension.Reader_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_reader_static_extension.Reader_static_extension) class Reader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _t : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer = (null : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _dst : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dst0 : stdgo.GoInt = 0;
    public var _dst1 : stdgo.GoInt = 0;
    public var _src : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _src0 : stdgo.GoInt = 0;
    public var _src1 : stdgo.GoInt = 0;
    public var _transformComplete : Bool = false;
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, ?_err:stdgo.Error, ?_dst:stdgo.Slice<stdgo.GoUInt8>, ?_dst0:stdgo.GoInt, ?_dst1:stdgo.GoInt, ?_src:stdgo.Slice<stdgo.GoUInt8>, ?_src0:stdgo.GoInt, ?_src1:stdgo.GoInt, ?_transformComplete:Bool) {
        if (_r != null) this._r = _r;
        if (_t != null) this._t = _t;
        if (_err != null) this._err = _err;
        if (_dst != null) this._dst = _dst;
        if (_dst0 != null) this._dst0 = _dst0;
        if (_dst1 != null) this._dst1 = _dst1;
        if (_src != null) this._src = _src;
        if (_src0 != null) this._src0 = _src0;
        if (_src1 != null) this._src1 = _src1;
        if (_transformComplete != null) this._transformComplete = _transformComplete;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "_t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_transformerdottransformer.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_transformerdotTransformer }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_dst", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_dst0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_dst1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_src", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_src0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_src1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_transformComplete", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Reader(_r, _t, _err, _dst, _dst0, _dst1, _src, _src0, _src1, _transformComplete);
    }
}
