package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
class T_labelIter_asInterface {
    @:keep
    public dynamic function _set(_s:stdgo.GoString):Void @:_0 __self__.value._set(_s);
    @:keep
    public dynamic function _next():Void @:_0 __self__.value._next();
    @:keep
    public dynamic function _label():stdgo.GoString return @:_0 __self__.value._label();
    @:keep
    public dynamic function _result():stdgo.GoString return @:_0 __self__.value._result();
    @:keep
    public dynamic function _done():Bool return @:_0 __self__.value._done();
    @:keep
    public dynamic function _reset():Void @:_0 __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.idna.Idna_t_labeliterpointer.T_labelIterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
