package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
class Encoder_asInterface {
    @:keep
    public dynamic function _shouldIndex(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Bool return @:_0 __self__.value._shouldIndex(_f);
    @:keep
    public dynamic function setMaxDynamicTableSizeLimit(_v:stdgo.GoUInt32):Void @:_0 __self__.value.setMaxDynamicTableSizeLimit(_v);
    @:keep
    public dynamic function maxDynamicTableSize():stdgo.GoUInt32 return @:_0 __self__.value.maxDynamicTableSize();
    @:keep
    public dynamic function setMaxDynamicTableSize(_v:stdgo.GoUInt32):Void @:_0 __self__.value.setMaxDynamicTableSize(_v);
    @:keep
    public dynamic function _searchTable(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return @:_0 __self__.value._searchTable(_f);
    @:keep
    public dynamic function writeField(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.Error return @:_0 __self__.value.writeField(_f);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.http2.hpack.Hpack_encoderpointer.EncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
