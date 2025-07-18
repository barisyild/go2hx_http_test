package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
class Regexp_asInterface {
    @:keep
    public dynamic function simplify():stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> return @:_0 __self__.value.simplify();
    @:keep
    public dynamic function _capNames(_names:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value._capNames(_names);
    @:keep
    public dynamic function capNames():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.capNames();
    @:keep
    public dynamic function maxCap():stdgo.GoInt return @:_0 __self__.value.maxCap();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function equal(_y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Bool return @:_0 __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_regexppointer.RegexpPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
