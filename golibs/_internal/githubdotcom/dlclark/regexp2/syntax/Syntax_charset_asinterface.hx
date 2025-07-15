package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
class CharSet_asInterface {
    @:keep
    public dynamic function _addLowercaseRange(_chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void @:_0 __self__.value._addLowercaseRange(_chMin, _chMax);
    @:keep
    public dynamic function _addLowercase():Void @:_0 __self__.value._addLowercase();
    @:keep
    public dynamic function _canonicalize():Void @:_0 __self__.value._canonicalize();
    @:keep
    public dynamic function _addNamedASCII(_name:stdgo.GoString, _negate:Bool):Bool return @:_0 __self__.value._addNamedASCII(_name, _negate);
    @:keep
    public dynamic function _addRange(_chMin:stdgo.GoInt32, _chMax:stdgo.GoInt32):Void @:_0 __self__.value._addRange(_chMin, _chMax);
    @:keep
    public dynamic function _addSubtraction(_sub:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void @:_0 __self__.value._addSubtraction(_sub);
    @:keep
    public dynamic function _addCategory(_categoryName:stdgo.GoString, _negate:Bool, _caseInsensitive:Bool, _pattern:stdgo.GoString):Void @:_0 __self__.value._addCategory(_categoryName, _negate, _caseInsensitive, _pattern);
    @:keep
    public dynamic function _addNegativeRanges(_ranges:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>):Void @:_0 __self__.value._addNegativeRanges(_ranges);
    @:keep
    public dynamic function _addRanges(_ranges:stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange.T_singleRange>):Void @:_0 __self__.value._addRanges(_ranges);
    @:keep
    public dynamic function _addCategories(_cats:haxe.Rest<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category.T_category>):Void @:_0 __self__.value._addCategories(..._cats);
    @:keep
    public dynamic function _makeAnything():Void @:_0 __self__.value._makeAnything();
    @:keep
    public dynamic function _addSet(_set:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet):Void @:_0 __self__.value._addSet(_set);
    @:keep
    public dynamic function _addWord(_ecma:Bool, _negate:Bool):Void @:_0 __self__.value._addWord(_ecma, _negate);
    @:keep
    public dynamic function _addSpace(_ecma:Bool, _re2:Bool, _negate:Bool):Void @:_0 __self__.value._addSpace(_ecma, _re2, _negate);
    @:keep
    public dynamic function _addChar(_ch:stdgo.GoInt32):Void @:_0 __self__.value._addChar(_ch);
    @:keep
    public dynamic function _addDigit(_ecma:Bool, _negate:Bool, _pattern:stdgo.GoString):Void @:_0 __self__.value._addDigit(_ecma, _negate, _pattern);
    @:keep
    public dynamic function isEmpty():Bool return @:_0 __self__.value.isEmpty();
    @:keep
    public dynamic function hasSubtraction():Bool return @:_0 __self__.value.hasSubtraction();
    @:keep
    public dynamic function isNegated():Bool return @:_0 __self__.value.isNegated();
    @:keep
    public dynamic function isMergeable():Bool return @:_0 __self__.value.isMergeable();
    @:keep
    public dynamic function isSingletonInverse():Bool return @:_0 __self__.value.isSingletonInverse();
    @:keep
    public dynamic function isSingleton():Bool return @:_0 __self__.value.isSingleton();
    @:keep
    public dynamic function singletonChar():stdgo.GoInt32 return @:_0 __self__.value.singletonChar();
    @:keep
    public dynamic function charIn(_ch:stdgo.GoInt32):Bool return @:_0 __self__.value.charIn(_ch);
    @:keep
    public dynamic function _mapHashFill(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void @:_0 __self__.value._mapHashFill(_buf);
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function copy():_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet return @:_0 __self__.value.copy();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charsetpointer.CharSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
