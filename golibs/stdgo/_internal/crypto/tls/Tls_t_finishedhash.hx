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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_finishedhash_static_extension.T_finishedHash_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_finishedhash_static_extension.T_finishedHash_static_extension) class T_finishedHash {
    public var _client : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _server : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _clientMD5 : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _serverMD5 : stdgo._internal.hash.Hash_hash.Hash = (null : stdgo._internal.hash.Hash_hash.Hash);
    public var _buffer : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _version : stdgo.GoUInt16 = 0;
    public var _prf : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void = null;
    public function new(?_client:stdgo._internal.hash.Hash_hash.Hash, ?_server:stdgo._internal.hash.Hash_hash.Hash, ?_clientMD5:stdgo._internal.hash.Hash_hash.Hash, ?_serverMD5:stdgo._internal.hash.Hash_hash.Hash, ?_buffer:stdgo.Slice<stdgo.GoUInt8>, ?_version:stdgo.GoUInt16, ?_prf:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Void) {
        if (_client != null) this._client = _client;
        if (_server != null) this._server = _server;
        if (_clientMD5 != null) this._clientMD5 = _clientMD5;
        if (_serverMD5 != null) this._serverMD5 = _serverMD5;
        if (_buffer != null) this._buffer = _buffer;
        if (_version != null) this._version = _version;
        if (_prf != null) this._prf = _prf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_client", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash }, optional : false }, { name : "_server", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash }, optional : false }, { name : "_clientMD5", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash }, optional : false }, { name : "_serverMD5", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdothash_hashdothash.__type__stdgodot_internaldothashdotHash_hashdotHash }, optional : false }, { name : "_buffer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "_prf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_finishedHash(_client, _server, _clientMD5, _serverMD5, _buffer, _version, _prf);
    }
}
