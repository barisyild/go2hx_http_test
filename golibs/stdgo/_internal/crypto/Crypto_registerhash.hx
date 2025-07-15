package stdgo._internal.crypto;
import stdgo._internal.strconv.Strconv;
function registerHash(_h:stdgo._internal.crypto.Crypto_hash.Hash, _f:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/crypto.go#L146"
        if ((_h >= (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/crypto.go#L147"
            throw new stdgo.AnyInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] = _f;
    }
