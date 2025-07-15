package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class Ordering_asInterface {
    @:keep
    public dynamic function run(_i:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run return @:_0 __self__.value.run(_i);
    @:keep
    public dynamic function numRuns():stdgo.GoInt return @:_0 __self__.value.numRuns();
    @:keep
    public dynamic function direction():_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction return @:_0 __self__.value.direction();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_orderingpointer.OrderingPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
