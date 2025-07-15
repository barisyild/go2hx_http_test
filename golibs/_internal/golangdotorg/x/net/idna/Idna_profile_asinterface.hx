package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
class Profile_asInterface {
    @:keep
    public dynamic function _validateLabel(_s:stdgo.GoString):stdgo.Error return @:_0 __self__.value._validateLabel(_s);
    @:keep
    public dynamic function _simplify(_cat:_internal.golangdotorg.x.net.idna.Idna_t_category.T_category):_internal.golangdotorg.x.net.idna.Idna_t_category.T_category return @:_0 __self__.value._simplify(_cat);
    @:keep
    public dynamic function _process(_s:stdgo.GoString, _toASCII:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._process(_s, _toASCII);
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function toUnicode(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.toUnicode(_s);
    @:keep
    public dynamic function toASCII(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.toASCII(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.idna.Idna_profilepointer.ProfilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
