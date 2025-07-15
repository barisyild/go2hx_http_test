package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension) @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p521element_static_extension.P521Element_static_extension) class P521Element {
    public var _x : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement(9, 9, ...[for (i in 0 ... 9) (0 : stdgo.GoUInt64)]);
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521montgomerydomainfieldelement.T_p521MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p521montgomerydomainfieldelementdott_p521montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p521montgomerydomainfieldelementdotT_p521MontgomeryDomainFieldElement }, optional : false }])));
    public function __copy__() {
        return new P521Element(_x);
    }
}
