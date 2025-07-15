package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_publickey_static_extension.PublicKey_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_publickey_static_extension.PublicKey_static_extension) class PublicKey {
    @:embedded
    public var parameters : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters = ({} : stdgo._internal.crypto.dsa.Dsa_parameters.Parameters);
    public var y : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    public function new(?parameters:stdgo._internal.crypto.dsa.Dsa_parameters.Parameters, ?y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) {
        if (parameters != null) this.parameters = parameters;
        if (y != null) this.y = y;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "parameters", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotdsadotdsa_parametersdotparameters.__type__stdgodot_internaldotcryptodotdsadotDsa_parametersdotParameters }, optional : false }, { name : "y", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }) }, optional : false }])));
    public function __copy__() {
        return new PublicKey(parameters, y);
    }
}
