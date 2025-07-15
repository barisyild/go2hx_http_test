package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
class T_headerFieldTable_asInterface {
    @:keep
    public dynamic function _idToIndex(_id:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value._idToIndex(_id);
    @:keep
    public dynamic function _search(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return @:_0 __self__.value._search(_f);
    @:keep
    public dynamic function _evictOldest(_n:stdgo.GoInt):Void @:_0 __self__.value._evictOldest(_n);
    @:keep
    public dynamic function _addEntry(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void @:_0 __self__.value._addEntry(_f);
    @:keep
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    @:keep
    public dynamic function _init():Void @:_0 __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtablepointer.T_headerFieldTablePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
