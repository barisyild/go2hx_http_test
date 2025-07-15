package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class T_isolatingRunSequence_asInterface {
    @:keep
    public dynamic function _assertOnly(_codes:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void @:_0 __self__.value._assertOnly(..._codes);
    @:keep
    public dynamic function _findRunLimit(_index:stdgo.GoInt, _validSet:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):stdgo.GoInt return @:_0 __self__.value._findRunLimit(_index, ..._validSet);
    @:keep
    public dynamic function _applyLevelsAndTypes():Void @:_0 __self__.value._applyLevelsAndTypes();
    @:keep
    public dynamic function _resolveImplicitLevels():Void @:_0 __self__.value._resolveImplicitLevels();
    @:keep
    public dynamic function _resolveNeutralTypes():Void @:_0 __self__.value._resolveNeutralTypes();
    @:keep
    public dynamic function _resolveWeakTypes():Void @:_0 __self__.value._resolveWeakTypes();
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequencepointer.T_isolatingRunSequencePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
