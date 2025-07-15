package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_writer_static_extension.Writer_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _t : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer = (null : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer);
    public var _dst : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _src : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _n : stdgo.GoInt = 0;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, ?_dst:stdgo.Slice<stdgo.GoUInt8>, ?_src:stdgo.Slice<stdgo.GoUInt8>, ?_n:stdgo.GoInt) {
        if (_w != null) this._w = _w;
        if (_t != null) this._t = _t;
        if (_dst != null) this._dst = _dst;
        if (_src != null) this._src = _src;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_transformerdottransformer.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_transformerdotTransformer }, optional : false }, { name : "_dst", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_src", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new Writer(_w, _t, _dst, _src, _n);
    }
}
