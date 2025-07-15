package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_dirinfo_static_extension.T_dirInfo_static_extension) @:using(stdgo._internal.os.Os_t_dirinfo_static_extension.T_dirInfo_static_extension) class T_dirInfo {
    public var _buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
    public var _nbuf : stdgo.GoInt = 0;
    public var _bufp : stdgo.GoInt = 0;
    public function new(?_buf:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, ?_nbuf:stdgo.GoInt, ?_bufp:stdgo.GoInt) {
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_bufp != null) this._bufp = _bufp;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false }, { name : "_nbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_bufp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dirInfo(_buf, _nbuf, _bufp);
    }
}
