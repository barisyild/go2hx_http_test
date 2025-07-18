package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
class T_bracketPairer_asInterface {
    @:keep
    public dynamic function _resolveBrackets(_dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void @:_0 __self__.value._resolveBrackets(_dirEmbed, _initialTypes);
    @:keep
    public dynamic function _setBracketsToType(_loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirPair:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void @:_0 __self__.value._setBracketsToType(_loc, _dirPair, _initialTypes);
    @:keep
    public dynamic function _assignBracketType(_loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _initialTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Void @:_0 __self__.value._assignBracketType(_loc, _dirEmbed, _initialTypes);
    @:keep
    public dynamic function _classBeforePair(_loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ return @:_0 __self__.value._classBeforePair(_loc);
    @:keep
    public dynamic function _classifyPairContent(_loc:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair, _dirEmbed:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ return @:_0 __self__.value._classifyPairContent(_loc, _dirEmbed);
    @:keep
    public dynamic function _getStrongTypeN0(_index:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ return @:_0 __self__.value._getStrongTypeN0(_index);
    @:keep
    public dynamic function _locateBrackets(_pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>):Void @:_0 __self__.value._locateBrackets(_pairTypes, _pairValues);
    @:keep
    public dynamic function _matchOpener(_pairValues:stdgo.Slice<stdgo.GoInt32>, _opener:stdgo.GoInt, _closer:stdgo.GoInt):Bool return @:_0 __self__.value._matchOpener(_pairValues, _opener, _closer);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairerpointer.T_bracketPairerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
