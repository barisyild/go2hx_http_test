package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
class Transformer_asInterface {
    @:keep
    public dynamic function _isFinal():Bool return @:_0 __self__.value._isFinal();
    @:keep
    public dynamic function _advanceString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._advanceString(_s);
    @:keep
    public dynamic function _advance(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._advance(_s);
    @:keep
    public dynamic function span(_src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.span(_src, _atEOF);
    @:keep
    public dynamic function transform(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.transform(_dst, _src, _atEOF);
    @:keep
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    public dynamic function _isRTL():Bool return @:_0 __self__.value._isRTL();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformerpointer.TransformerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
