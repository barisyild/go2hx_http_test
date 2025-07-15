package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_t_link_static_extension.T_link_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_t_link_static_extension.T_link_static_extension) class T_link {
    public var _t : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer = (null : _internal.golangdotorg.x.text.transform.Transform_transformer.Transformer);
    public var _b : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _p : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public function new(?_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, ?_b:stdgo.Slice<stdgo.GoUInt8>, ?_p:stdgo.GoInt, ?_n:stdgo.GoInt) {
        if (_t != null) this._t = _t;
        if (_b != null) this._b = _b;
        if (_p != null) this._p = _p;
        if (_n != null) this._n = _n;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_transformerdottransformer.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_transformerdotTransformer }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_link(_t, _b, _p, _n);
    }
}
