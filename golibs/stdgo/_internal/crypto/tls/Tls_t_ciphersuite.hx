package stdgo._internal.crypto.tls;
import stdgo._internal.internal.cpu.Cpu;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.rc4.Rc4;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.internal.boring.Boring;
import _internal.golangdotorg.x.crypto.chacha20poly1305.Chacha20poly1305;
import stdgo._internal.container.list.List;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.x509.X509;
import stdgo._internal.runtime.Runtime;
import _internal.golangdotorg.x.crypto.hkdf.Hkdf;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.time.Time;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_ciphersuite_static_extension.T_cipherSuite_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_ciphersuite_static_extension.T_cipherSuite_static_extension) class T_cipherSuite {
    public var _id : stdgo.GoUInt16 = 0;
    public var _keyLen : stdgo.GoInt = 0;
    public var _macLen : stdgo.GoInt = 0;
    public var _ivLen : stdgo.GoInt = 0;
    public var _ka : stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement = null;
    public var _flags : stdgo.GoInt = 0;
    public var _cipher : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface = null;
    public var _mac : stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_hash.Hash = null;
    public var _aead : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead = null;
    public function new(?_id:stdgo.GoUInt16, ?_keyLen:stdgo.GoInt, ?_macLen:stdgo.GoInt, ?_ivLen:stdgo.GoInt, ?_ka:stdgo.GoUInt16 -> stdgo._internal.crypto.tls.Tls_t_keyagreement.T_keyAgreement, ?_flags:stdgo.GoInt, ?_cipher:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, Bool) -> stdgo.AnyInterface, ?_mac:stdgo.Slice<stdgo.GoUInt8> -> stdgo._internal.hash.Hash_hash.Hash, ?_aead:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> stdgo._internal.crypto.tls.Tls_t_aead.T_aead) {
        if (_id != null) this._id = _id;
        if (_keyLen != null) this._keyLen = _keyLen;
        if (_macLen != null) this._macLen = _macLen;
        if (_ivLen != null) this._ivLen = _ivLen;
        if (_ka != null) this._ka = _ka;
        if (_flags != null) this._flags = _flags;
        if (_cipher != null) this._cipher = _cipher;
        if (_mac != null) this._mac = _mac;
        if (_aead != null) this._aead = _aead;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "_keyLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_macLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_ivLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_ka", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uint16_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keyagreementdott_keyagreement.__type__stdgodot_internaldotcryptodottlsdotTls_t_keyagreementdotT_keyAgreement] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_flags", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_cipher", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.interfaceType(true, [])] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_mac", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_aead", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_aeaddott_aead.__type__stdgodot_internaldotcryptodottlsdotTls_t_aeaddotT_aead] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_cipherSuite(_id, _keyLen, _macLen, _ivLen, _ka, _flags, _cipher, _mac, _aead);
    }
}
