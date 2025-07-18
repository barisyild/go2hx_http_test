package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_parameters_static_extension.Parameters_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_parameters_static_extension.Parameters_static_extension) class Parameters {
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var q : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public var g : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, ?g:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (g != null) this.g = g;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "q", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }, { name : "g", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }])));
    public function __copy__() {
        return new Parameters(p, q, g);
    }
}
