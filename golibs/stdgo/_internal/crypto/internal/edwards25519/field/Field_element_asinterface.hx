package stdgo._internal.crypto.internal.edwards25519.field;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
class Element_asInterface {
    @:keep
    public dynamic function _carryPropagateGeneric():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value._carryPropagateGeneric();
    @:keep
    public dynamic function _carryPropagate():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value._carryPropagate();
    @:keep
    public dynamic function sqrtRatio(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _v:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.GoInt; } return @:_0 __self__.value.sqrtRatio(_u, _v);
    @:keep
    public dynamic function pow22523(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.pow22523(_x);
    @:keep
    public dynamic function mult32(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.mult32(_x, _y);
    @:keep
    public dynamic function square(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.square(_x);
    @:keep
    public dynamic function multiply(_x:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _y:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.multiply(_x, _y);
    @:keep
    public dynamic function absolute(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.absolute(_u);
    @:keep
    public dynamic function isNegative():stdgo.GoInt return @:_0 __self__.value.isNegative();
    @:keep
    public dynamic function swap(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):Void @:_0 __self__.value.swap(_u, _cond);
    @:keep
    public dynamic function select(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _cond:stdgo.GoInt):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.select(_a, _b, _cond);
    @:keep
    public dynamic function equal(_u:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.GoInt return @:_0 __self__.value.equal(_u);
    @:keep
    public dynamic function _bytes(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._bytes(_out);
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    public dynamic function setBytes(_x:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_x);
    @:keep
    public dynamic function set(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.set(_a);
    @:keep
    public dynamic function invert(_z:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.invert(_z);
    @:keep
    public dynamic function negate(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.negate(_a);
    @:keep
    public dynamic function subtract(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.subtract(_a, _b);
    @:keep
    public dynamic function add(_a:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>, _b:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element>):stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.add(_a, _b);
    @:keep
    public dynamic function _reduce():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value._reduce();
    @:keep
    public dynamic function one():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.one();
    @:keep
    public dynamic function zero():stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.field.Field_element.Element> return @:_0 __self__.value.zero();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.field.Field_elementpointer.ElementPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
