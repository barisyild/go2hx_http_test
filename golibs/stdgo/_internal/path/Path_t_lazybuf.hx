package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.path.Path_t_lazybuf_static_extension.T_lazybuf_static_extension) @:using(stdgo._internal.path.Path_t_lazybuf_static_extension.T_lazybuf_static_extension) class T_lazybuf {
    public var _s : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_lazybuf(_s, _buf, _w);
    }
}
