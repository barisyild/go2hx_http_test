package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
class T_idnaTrie_asInterface {
    @:keep
    public dynamic function _lookupValue(_n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 return @:_0 __self__.value._lookupValue(_n, _b);
    @:keep
    public dynamic function _lookupStringUnsafe(_s:stdgo.GoString):stdgo.GoUInt16 return @:_0 __self__.value._lookupStringUnsafe(_s);
    @:keep
    public dynamic function _lookupString(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return @:_0 __self__.value._lookupString(_s);
    @:keep
    public dynamic function _lookupUnsafe(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return @:_0 __self__.value._lookupUnsafe(_s);
    @:keep
    public dynamic function _lookup(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return @:_0 __self__.value._lookup(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.idna.Idna_t_idnatriepointer.T_idnaTriePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
