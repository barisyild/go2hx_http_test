package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
class Decoder_asInterface {
    @:keep
    public dynamic function _decodeString(_u:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._decodeString(_u);
    @:keep
    public dynamic function _readString(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._readString(_p);
    @:keep
    public dynamic function _parseDynamicTableSizeUpdate():stdgo.Error return @:_0 __self__.value._parseDynamicTableSizeUpdate();
    @:keep
    public dynamic function _callEmit(_hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.Error return @:_0 __self__.value._callEmit(_hf);
    @:keep
    public dynamic function _parseFieldLiteral(_n:stdgo.GoUInt8, _it:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_indextype.T_indexType):stdgo.Error return @:_0 __self__.value._parseFieldLiteral(_n, _it);
    @:keep
    public dynamic function _parseFieldIndexed():stdgo.Error return @:_0 __self__.value._parseFieldIndexed();
    @:keep
    public dynamic function _parseHeaderFieldRepr():stdgo.Error return @:_0 __self__.value._parseHeaderFieldRepr();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function decodeFull(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>; var _1 : stdgo.Error; } return @:_0 __self__.value.decodeFull(_p);
    @:keep
    public dynamic function _at(_i:stdgo.GoUInt64):{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField; var _1 : Bool; } return @:_0 __self__.value._at(_i);
    @:keep
    public dynamic function _maxTableIndex():stdgo.GoInt return @:_0 __self__.value._maxTableIndex();
    @:keep
    public dynamic function setAllowedMaxDynamicTableSize(_v:stdgo.GoUInt32):Void @:_0 __self__.value.setAllowedMaxDynamicTableSize(_v);
    @:keep
    public dynamic function setMaxDynamicTableSize(_v:stdgo.GoUInt32):Void @:_0 __self__.value.setMaxDynamicTableSize(_v);
    @:keep
    public dynamic function emitEnabled():Bool return @:_0 __self__.value.emitEnabled();
    @:keep
    public dynamic function setEmitEnabled(_v:Bool):Void @:_0 __self__.value.setEmitEnabled(_v);
    @:keep
    public dynamic function setEmitFunc(_emitFunc:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void):Void @:_0 __self__.value.setEmitFunc(_emitFunc);
    @:keep
    public dynamic function setMaxStringLength(_n:stdgo.GoInt):Void @:_0 __self__.value.setMaxStringLength(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.http2.hpack.Hpack_decoderpointer.DecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
