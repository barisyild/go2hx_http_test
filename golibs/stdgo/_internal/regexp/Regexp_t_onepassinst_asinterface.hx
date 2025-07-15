package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
class T_onePassInst_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax_instop.InstOp return @:_0 __self__.value._op();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function matchRunePos(_0:stdgo.GoInt32):stdgo.GoInt return @:_0 __self__.value.matchRunePos(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function matchRune(_0:stdgo.GoInt32):Bool return @:_0 __self__.value.matchRune(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function matchEmptyWidth(_0:stdgo.GoInt32, _1:stdgo.GoInt32):Bool return @:_0 __self__.value.matchEmptyWidth(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_t_onepassinstpointer.T_onePassInstPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
