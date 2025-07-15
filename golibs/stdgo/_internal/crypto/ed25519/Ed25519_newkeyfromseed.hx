package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
function newKeyFromSeed(_seed:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.ed25519.Ed25519_privatekey.PrivateKey {
        var _privateKey = (new stdgo.Slice<stdgo.GoUInt8>((64 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L162"
        stdgo._internal.crypto.ed25519.Ed25519__newkeyfromseed._newKeyFromSeed(_privateKey, _seed);
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L163"
        return _privateKey;
    }
