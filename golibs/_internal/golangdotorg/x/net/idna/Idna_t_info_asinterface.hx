package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
class T_info_asInterface {
    @:keep
    public dynamic function _isViramaModifier():Bool return @:_0 __self__.value._isViramaModifier();
    @:keep
    public dynamic function _isModifier():Bool return @:_0 __self__.value._isModifier();
    @:keep
    public dynamic function _joinType():_internal.golangdotorg.x.net.idna.Idna_t_info.T_info return @:_0 __self__.value._joinType();
    @:keep
    public dynamic function _category():_internal.golangdotorg.x.net.idna.Idna_t_category.T_category return @:_0 __self__.value._category();
    @:keep
    public dynamic function _isMapped():Bool return @:_0 __self__.value._isMapped();
    @:keep
    public dynamic function _appendMapping(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._appendMapping(_b, _s);
    @:keep
    public dynamic function _isBidi(_s:stdgo.GoString):Bool return @:_0 __self__.value._isBidi(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.idna.Idna_t_infopointer.T_infoPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
