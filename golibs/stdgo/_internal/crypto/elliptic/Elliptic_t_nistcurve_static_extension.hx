package stdgo._internal.crypto.elliptic;
@:keep @:allow(stdgo._internal.crypto.elliptic.Elliptic.T_nistCurve_asInterface) class T_nistCurve_static_extension {
    @:keep
    @:tdfield
    overload inline extern static public function unmarshalCompressed<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return unmarshalCompressed__tp__0(_curve, _data);
    @:tdfield
    static public function unmarshalCompressed__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: unmarshalCompressed";
    }
    @:keep
    @:tdfield
    overload inline extern static public function unmarshal<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return unmarshal__tp__0(_curve, _data);
    @:tdfield
    static public function unmarshal__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: unmarshal";
    }
    @:keep
    @:tdfield
    overload inline extern static public function combinedMult<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, px:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return combinedMult__tp__0(_curve, px, py, _s1, _s2);
    @:tdfield
    static public function combinedMult__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, px:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, py:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: combinedMult";
    }
    @:keep
    @:tdfield
    overload inline extern static public function scalarBaseMult<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return scalarBaseMult__tp__0(_curve, _scalar);
    @:tdfield
    static public function scalarBaseMult__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: scalarBaseMult";
    }
    @:keep
    @:tdfield
    overload inline extern static public function scalarMult<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return scalarMult__tp__0(_curve, bx, by, _scalar);
    @:tdfield
    static public function scalarMult__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, bx:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, by:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _scalar:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: scalarMult";
    }
    @:keep
    @:tdfield
    overload inline extern static public function double<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return double__tp__0(_curve, _x1, _y1);
    @:tdfield
    static public function double__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: double";
    }
    @:keep
    @:tdfield
    overload inline extern static public function add<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return add__tp__0(_curve, _x1, _y1, _x2, _y2);
    @:tdfield
    static public function add__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _x2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: add";
    }
    @:keep
    @:tdfield
    overload inline extern static public function isOnCurve<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool return isOnCurve__tp__0(_curve, _x, _y);
    @:tdfield
    static public function isOnCurve__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: isOnCurve";
    }
    @:keep
    @:tdfield
    overload inline extern static public function params<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return params__tp__0(_curve);
    @:tdfield
    static public function params__tp__0<Point>( _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>>):stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> {
        @:recv var _curve:stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve.T_nistCurve<Point>> = _curve;
        trace("funclit");
        throw "not implemented: params";
    }
}
