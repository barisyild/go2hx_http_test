package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension) @:using(stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar_static_extension.Scalar_static_extension) class Scalar {
    public var _s : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_s:stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_fiatscalarmontgomerydomainfieldelement.T_fiatScalarMontgomeryDomainFieldElement) {
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_fiatscalarmontgomerydomainfieldelementdott_fiatscalarmontgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_fiatscalarmontgomerydomainfieldelementdotT_fiatScalarMontgomeryDomainFieldElement }, optional : false }])));
    public function __copy__() {
        return new Scalar(_s);
    }
}
