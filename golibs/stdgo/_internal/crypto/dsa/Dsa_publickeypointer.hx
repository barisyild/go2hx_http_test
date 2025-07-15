package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:keep @:follow @:using(stdgo._internal.crypto.dsa.Dsa_publickey_static_extension.PublicKey_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_publickeypointer_static_extension.PublicKeyPointer_static_extension) typedef PublicKeyPointer = stdgo.Pointer<stdgo._internal.crypto.dsa.Dsa_publickey.PublicKey>;
