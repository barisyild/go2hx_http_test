package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:keep @:follow @:using(stdgo._internal.crypto.dsa.Dsa_parameters_static_extension.Parameters_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_parameterspointer_static_extension.ParametersPointer_static_extension) typedef ParametersPointer = stdgo.Pointer<stdgo._internal.crypto.dsa.Dsa_parameters.Parameters>;
