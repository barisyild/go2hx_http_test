package stdgo._internal.crypto.ecdsa;
@:structInit @:using(stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve_static_extension.T_nistCurve_static_extension) @:using(stdgo._internal.crypto.ecdsa.Ecdsa_t_nistcurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public var n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus> = (null : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>);
    public function new(?n:stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>) {
        if (n != null) this.n = n;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotbigmoddotbigmod_modulusdotmodulus.__type__stdgodot_internaldotcryptodotinternaldotbigmoddotBigmod_modulusdotModulus }) }, optional : false }])));
    public function __copy__() {
        return new T_nistCurve<Point>(n);
    }
}
