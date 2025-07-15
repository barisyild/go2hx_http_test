package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class Properties_asInterface {
    @:keep
    public dynamic function _reverseBracket(_r:stdgo.GoInt32):stdgo.GoInt32 return @:_0 __self__.value._reverseBracket(_r);
    @:keep
    public dynamic function isOpeningBracket():Bool return @:_0 __self__.value.isOpeningBracket();
    @:keep
    public dynamic function isBracket():Bool return @:_0 __self__.value.isBracket();
    @:keep
    public dynamic function class_():_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ return @:_0 __self__.value.class_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_propertiespointer.PropertiesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
