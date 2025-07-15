package crypto.internal.poly1305;
var tagSize : stdgo.GoUInt64 = 16i64;
typedef MAC = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC;
typedef MACPointer = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_macpointer.MACPointer;
typedef MACPointerPointer = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_macpointerpointer.MACPointerPointer;
/**
    * Package poly1305 implements Poly1305 one-time message authentication code as
    * specified in https://cr.yp.to/mac/poly1305-20050329.pdf.
    * 
    * Poly1305 is a fast, one-time authentication function. It is infeasible for an
    * attacker to generate an authenticator for a message without the key. However, a
    * key must only be used for a single message. Authenticating two different
    * messages with the same key allows an attacker to forge authenticators for other
    * messages with the same key.
    * 
    * Poly1305 was originally coupled with AES in order to make Poly1305-AES. AES was
    * used with a fixed key in order to generate one-time keys from an nonce.
    * However, in this package AES isn't used and the one-time key is specified
    * directly.
**/
class Poly1305 {
    /**
        * Sum generates an authenticator for msg using a one-time key and puts the
        * 16-byte result into out. Authenticating two different messages with the same
        * key allows an attacker to forge messages at will.
    **/
    static public inline function sum(_out:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_sum.sum(_out, _m, _key);
    /**
        * Verify returns true if mac is a valid authenticator for m with the given key.
    **/
    static public inline function verify(_mac:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>, _m:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Bool return _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_verify.verify(_mac, _m, _key);
    /**
        * New returns a new MAC computing an authentication
        * tag of all data written to it with the given key.
        * This allows writing the message progressively instead
        * of passing it as a single slice. Common users should use
        * the Sum function instead.
        * 
        * The key must be unique for each message, as authenticating
        * two different messages with the same key allows an attacker
        * to forge messages at will.
    **/
    static public inline function new_(_key:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC> return _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_new_.new_(_key);
}
