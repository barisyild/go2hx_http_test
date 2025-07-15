package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:structInit @:using(stdgo._internal.crypto.rsa.Rsa_precomputedvalues_static_extension.PrecomputedValues_static_extension) @:using(stdgo._internal.crypto.rsa.Rsa_precomputedvalues_static_extension.PrecomputedValues_static_extension) class PrecomputedValues {
    public var dp : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var dq : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var qinv : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var cRTValues : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue> = (null : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>);
    public var _n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
    public var _p : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
    public var _q : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
    public function new(?dp:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?dq:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?qinv:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?cRTValues:stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_crtvalue.CRTValue>, ?_n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>, ?_p:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>, ?_q:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>) {
        if (dp != null) this.dp = dp;
        if (dq != null) this.dq = dq;
        if (qinv != null) this.qinv = qinv;
        if (cRTValues != null) this.cRTValues = cRTValues;
        if (_n != null) this._n = _n;
        if (_p != null) this._p = _p;
        if (_q != null) this._q = _q;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "dp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "dq", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "qinv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "cRTValues", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrsadotrsa_crtvaluedotcrtvalue.__type__stdgodot_internaldotcryptodotrsadotRsa_crtvaluedotCRTValue }) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_modulusdotmodulus.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_modulusdotModulus }) }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_modulusdotmodulus.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_modulusdotModulus }) }, optional : false }, { name : "_q", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_modulusdotmodulus.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_modulusdotModulus }) }, optional : false }])));
    public function __copy__() {
        return new PrecomputedValues(dp, dq, qinv, cRTValues, _n, _p, _q);
    }
}
