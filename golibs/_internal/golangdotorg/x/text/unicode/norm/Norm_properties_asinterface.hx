package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class Properties_asInterface {
    @:keep
    public dynamic function trailCCC():stdgo.GoUInt8 return @:_0 __self__.value.trailCCC();
    @:keep
    public dynamic function leadCCC():stdgo.GoUInt8 return @:_0 __self__.value.leadCCC();
    @:keep
    public dynamic function cCC():stdgo.GoUInt8 return @:_0 __self__.value.cCC();
    @:keep
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    @:keep
    public dynamic function decomposition():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.decomposition();
    @:keep
    public dynamic function _nTrailingNonStarters():stdgo.GoUInt8 return @:_0 __self__.value._nTrailingNonStarters();
    @:keep
    public dynamic function _nLeadingNonStarters():stdgo.GoUInt8 return @:_0 __self__.value._nLeadingNonStarters();
    @:keep
    public dynamic function _multiSegment():Bool return @:_0 __self__.value._multiSegment();
    @:keep
    public dynamic function _isInert():Bool return @:_0 __self__.value._isInert();
    @:keep
    public dynamic function _hasDecomposition():Bool return @:_0 __self__.value._hasDecomposition();
    @:keep
    public dynamic function _combinesBackward():Bool return @:_0 __self__.value._combinesBackward();
    @:keep
    public dynamic function _combinesForward():Bool return @:_0 __self__.value._combinesForward();
    @:keep
    public dynamic function _isYesD():Bool return @:_0 __self__.value._isYesD();
    @:keep
    public dynamic function _isYesC():Bool return @:_0 __self__.value._isYesC();
    @:keep
    public dynamic function boundaryAfter():Bool return @:_0 __self__.value.boundaryAfter();
    @:keep
    public dynamic function boundaryBefore():Bool return @:_0 __self__.value.boundaryBefore();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_propertiespointer.PropertiesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
