package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class T_input_asInterface {
    @:keep
    public dynamic function _hangul(_p:stdgo.GoInt):stdgo.GoInt32 return @:_0 __self__.value._hangul(_p);
    @:keep
    public dynamic function _charinfoNFKC(_p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return @:_0 __self__.value._charinfoNFKC(_p);
    @:keep
    public dynamic function _charinfoNFC(_p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return @:_0 __self__.value._charinfoNFC(_p);
    @:keep
    public dynamic function _copySlice(_buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._copySlice(_buf, _b, _e);
    @:keep
    public dynamic function _appendSlice(_buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendSlice(_buf, _b, _e);
    @:keep
    public dynamic function _skipContinuationBytes(_p:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._skipContinuationBytes(_p);
    @:keep
    public dynamic function _skipASCII(_p:stdgo.GoInt, _max:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._skipASCII(_p, _max);
    @:keep
    public dynamic function __byte(_p:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value.__byte(_p);
    @:keep
    public dynamic function _setString(_str:stdgo.GoString):Void @:_0 __self__.value._setString(_str);
    @:keep
    public dynamic function _setBytes(_str:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._setBytes(_str);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inputpointer.T_inputPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
