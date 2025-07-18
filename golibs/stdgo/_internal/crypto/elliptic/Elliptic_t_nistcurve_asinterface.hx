package stdgo._internal.crypto.elliptic;
class T_nistCurve_asInterface<Point> {
    public var unmarshalCompressed__tp__0 : (_data:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var unmarshal__tp__0 : (_data:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var combinedMult__tp__0 : (px:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var scalarBaseMult__tp__0 : (_scalar:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var scalarMult__tp__0 : (bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _scalar:stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var double__tp__0 : (_x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var add__tp__0 : (_x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    public var isOnCurve__tp__0 : (_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> Bool;
    public var params__tp__0 : () -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>;
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.elliptic.Elliptic_t_nistcurvepointer.T_nistCurvePointer<Point>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
