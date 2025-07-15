package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
@:structInit @:using(stdgo._internal.crypto.ed25519.Ed25519_options_static_extension.Options_static_extension) @:using(stdgo._internal.crypto.ed25519.Ed25519_options_static_extension.Options_static_extension) class Options {
    public var hash : stdgo._internal.crypto.Crypto_hash.Hash = ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash);
    public var context : stdgo.GoString = "";
    public function new(?hash:stdgo._internal.crypto.Crypto_hash.Hash, ?context:stdgo.GoString) {
        if (hash != null) this.hash = hash;
        if (context != null) this.context = context;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "hash", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotcrypto_hashdothash.__type__stdgodot_internaldotcryptodotCrypto_hashdotHash }, optional : false }, { name : "context", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Options(hash, context);
    }
}
