package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:keep @:follow @:using(stdgo._internal.crypto.dsa.Dsa_privatekey_static_extension.PrivateKey_static_extension) @:using(stdgo._internal.crypto.dsa.Dsa_privatekeypointer_static_extension.PrivateKeyPointer_static_extension) typedef PrivateKeyPointer = stdgo.Pointer<stdgo._internal.crypto.dsa.Dsa_privatekey.PrivateKey>;
