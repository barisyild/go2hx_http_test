package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension) @:using(stdgo._internal.crypto.internal.nistec.fiat.Fiat_p224element_static_extension.P224Element_static_extension) class P224Element {
    public var _x : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement = new stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)]);
    public function new(?_x:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p224montgomerydomainfieldelement.T_p224MontgomeryDomainFieldElement) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotfiat_t_p224montgomerydomainfieldelementdott_p224montgomerydomainfieldelement.__type__stdgodot_internaldotcryptodotinternaldotnistecdotfiatdotFiat_t_p224montgomerydomainfieldelementdotT_p224MontgomeryDomainFieldElement }, optional : false }])));
    public function __copy__() {
        return new P224Element(_x);
    }
}
