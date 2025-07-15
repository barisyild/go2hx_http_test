package stdgo._internal.crypto.ecdsa;
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension) @:using(stdgo._internal.crypto.ecdsa.Ecdsa_publickey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var curve : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve = (null : stdgo._internal.crypto.elliptic.Elliptic_curve.Curve);
    public var x : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?curve:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve, ?x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (curve != null) this.curve = curve;
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "curve", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotellipticdotelliptic_curvedotcurve.__type__stdgodot_internaldotcryptodotellipticdotElliptic_curvedotCurve }, optional : false }, { name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }])));
    public var add(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_add():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).add;
    public var double(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_double():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).double;
    public var isOnCurve(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isOnCurve():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) -> Bool return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isOnCurve;
    public var params(get, never) : () -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_params():() -> stdgo.Ref<stdgo._internal.crypto.elliptic.Elliptic_curveparams.CurveParams> return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params;
    public var scalarBaseMult(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_scalarBaseMult():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scalarBaseMult;
    public var scalarMult(get, never) : (stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_scalarMult():(stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, stdgo.Slice<stdgo.GoUInt8>) -> { var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; } return @:check31 (this.curve ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scalarMult;
    public function __copy__() {
        return new PublicKey(curve, x, y);
    }
}
