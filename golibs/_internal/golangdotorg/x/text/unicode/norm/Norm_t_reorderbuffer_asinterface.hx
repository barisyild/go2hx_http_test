package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class T_reorderBuffer_asInterface {
    @:keep
    public dynamic function _compose():Void @:_0 __self__.value._compose();
    @:keep
    public dynamic function _combineHangul(_s:stdgo.GoInt, _i:stdgo.GoInt, _k:stdgo.GoInt):Void @:_0 __self__.value._combineHangul(_s, _i, _k);
    @:keep
    public dynamic function _decomposeHangul(_r:stdgo.GoInt32):Void @:_0 __self__.value._decomposeHangul(_r);
    @:keep
    public dynamic function _bytesAt(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytesAt(_n);
    @:keep
    public dynamic function _runeAt(_n:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._runeAt(_n);
    @:keep
    public dynamic function _assignRune(_pos:stdgo.GoInt, _r:stdgo.GoInt32):Void @:_0 __self__.value._assignRune(_pos, _r);
    @:keep
    public dynamic function _appendRune(_r:stdgo.GoInt32):Void @:_0 __self__.value._appendRune(_r);
    @:keep
    public dynamic function _insertCGJ():Void @:_0 __self__.value._insertCGJ();
    @:keep
    public dynamic function _insertSingle(_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void @:_0 __self__.value._insertSingle(_src, _i, _info);
    @:keep
    public dynamic function _insertDecomposed(_dcomp:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr return @:_0 __self__.value._insertDecomposed(_dcomp);
    @:keep
    public dynamic function _insertUnsafe(_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void @:_0 __self__.value._insertUnsafe(_src, _i, _info);
    @:keep
    public dynamic function _insertFlush(_src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr return @:_0 __self__.value._insertFlush(_src, _i, _info);
    @:keep
    public dynamic function _insertOrdered(_info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void @:_0 __self__.value._insertOrdered(_info);
    @:keep
    public dynamic function _flushCopy(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return @:_0 __self__.value._flushCopy(_buf);
    @:keep
    public dynamic function _flush(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._flush(_out);
    @:keep
    public dynamic function _doFlush():Bool return @:_0 __self__.value._doFlush();
    @:keep
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    @:keep
    public dynamic function _setFlusher(_out:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> -> Bool):Void @:_0 __self__.value._setFlusher(_out, _f);
    @:keep
    public dynamic function _initString(_f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.GoString):Void @:_0 __self__.value._initString(_f, _src);
    @:keep
    public dynamic function _init(_f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._init(_f, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbufferpointer.T_reorderBufferPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
