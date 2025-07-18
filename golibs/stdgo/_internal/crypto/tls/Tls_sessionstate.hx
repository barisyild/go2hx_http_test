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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_sessionstate_static_extension.SessionState_static_extension) @:using(stdgo._internal.crypto.tls.Tls_sessionstate_static_extension.SessionState_static_extension) class SessionState {
    public var extra : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var earlyData : Bool = false;
    public var _version : stdgo.GoUInt16 = 0;
    public var _isClient : Bool = false;
    public var _cipherSuite : stdgo.GoUInt16 = 0;
    public var _createdAt : stdgo.GoUInt64 = 0;
    public var _secret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _extMasterSecret : Bool = false;
    public var _peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
    public var _activeCertHandles : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
    public var _ocspResponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _scts : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
    public var _alpnProtocol : stdgo.GoString = "";
    public var _useBy : stdgo.GoUInt64 = 0;
    public var _ageAdd : stdgo.GoUInt32 = 0;
    public function new(?extra:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?earlyData:Bool, ?_version:stdgo.GoUInt16, ?_isClient:Bool, ?_cipherSuite:stdgo.GoUInt16, ?_createdAt:stdgo.GoUInt64, ?_secret:stdgo.Slice<stdgo.GoUInt8>, ?_extMasterSecret:Bool, ?_peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, ?_activeCertHandles:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>, ?_ocspResponse:stdgo.Slice<stdgo.GoUInt8>, ?_scts:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>, ?_alpnProtocol:stdgo.GoString, ?_useBy:stdgo.GoUInt64, ?_ageAdd:stdgo.GoUInt32) {
        if (extra != null) this.extra = extra;
        if (earlyData != null) this.earlyData = earlyData;
        if (_version != null) this._version = _version;
        if (_isClient != null) this._isClient = _isClient;
        if (_cipherSuite != null) this._cipherSuite = _cipherSuite;
        if (_createdAt != null) this._createdAt = _createdAt;
        if (_secret != null) this._secret = _secret;
        if (_extMasterSecret != null) this._extMasterSecret = _extMasterSecret;
        if (_peerCertificates != null) this._peerCertificates = _peerCertificates;
        if (_activeCertHandles != null) this._activeCertHandles = _activeCertHandles;
        if (_ocspResponse != null) this._ocspResponse = _ocspResponse;
        if (_scts != null) this._scts = _scts;
        if (_verifiedChains != null) this._verifiedChains = _verifiedChains;
        if (_alpnProtocol != null) this._alpnProtocol = _alpnProtocol;
        if (_useBy != null) this._useBy = _useBy;
        if (_ageAdd != null) this._ageAdd = _ageAdd;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "extra", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "earlyData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "_isClient", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_cipherSuite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "_createdAt", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false },
{ name : "_secret", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_extMasterSecret", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_peerCertificates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }) }, optional : false },
{ name : "_activeCertHandles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_activecertdott_activecert.__type__stdgodot_internaldotcryptodottlsdotTls_t_activecertdotT_activeCert }) }) }, optional : false },
{ name : "_ocspResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_scts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "_verifiedChains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }) }) }, optional : false },
{ name : "_alpnProtocol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_useBy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false },
{ name : "_ageAdd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new SessionState(
extra,
earlyData,
_version,
_isClient,
_cipherSuite,
_createdAt,
_secret,
_extMasterSecret,
_peerCertificates,
_activeCertHandles,
_ocspResponse,
_scts,
_verifiedChains,
_alpnProtocol,
_useBy,
_ageAdd);
    }
}
