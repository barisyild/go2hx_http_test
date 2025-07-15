package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class T_directionalStatusStack_asInterface {
    @:keep
    public dynamic function _lastDirectionalIsolateStatus():Bool return @:_0 __self__.value._lastDirectionalIsolateStatus();
    @:keep
    public dynamic function _lastDirectionalOverrideStatus():_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ return @:_0 __self__.value._lastDirectionalOverrideStatus();
    @:keep
    public dynamic function _lastEmbeddingLevel():_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level return @:_0 __self__.value._lastEmbeddingLevel();
    @:keep
    public dynamic function _push(_level:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level, _overrideStatus:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _isolateStatus:Bool):Void @:_0 __self__.value._push(_level, _overrideStatus, _isolateStatus);
    @:keep
    public dynamic function _depth():stdgo.GoInt return @:_0 __self__.value._depth();
    @:keep
    public dynamic function _pop():Void @:_0 __self__.value._pop();
    @:keep
    public dynamic function _empty():Void @:_0 __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstackpointer.T_directionalStatusStackPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
