package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class Paragraph_asInterface {
    @:keep
    public dynamic function line(_start:stdgo.GoInt, _end:stdgo.GoInt):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering; var _1 : stdgo.Error; } return @:_0 __self__.value.line(_start, _end);
    @:keep
    public dynamic function order():{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering; var _1 : stdgo.Error; } return @:_0 __self__.value.order();
    @:keep
    public dynamic function runAt(_pos:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run return @:_0 __self__.value.runAt(_pos);
    @:keep
    public dynamic function direction():_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction return @:_0 __self__.value.direction();
    @:keep
    public dynamic function isLeftToRight():Bool return @:_0 __self__.value.isLeftToRight();
    @:keep
    public dynamic function setString(_s:stdgo.GoString, _opts:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.setString(_s, ..._opts);
    @:keep
    public dynamic function setBytes(_b:stdgo.Slice<stdgo.GoUInt8>, _opts:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.setBytes(_b, ..._opts);
    @:keep
    public dynamic function _prepareInput():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._prepareInput();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraphpointer.ParagraphPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
