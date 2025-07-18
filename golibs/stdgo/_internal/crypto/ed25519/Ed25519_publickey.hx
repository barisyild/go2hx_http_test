package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:named @:using(stdgo._internal.crypto.ed25519.Ed25519_publickey_static_extension.PublicKey_static_extension) @:using(stdgo._internal.crypto.ed25519.Ed25519_publickey_static_extension.PublicKey_static_extension) typedef PublicKey = stdgo.Slice<stdgo.GoUInt8>;
