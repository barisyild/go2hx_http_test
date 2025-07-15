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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_clienthellomsg_static_extension.T_clientHelloMsg_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_clienthellomsg_static_extension.T_clientHelloMsg_static_extension) class T_clientHelloMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _vers : stdgo.GoUInt16 = 0;
    public var _random : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _sessionId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cipherSuites : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var _compressionMethods : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _serverName : stdgo.GoString = "";
    public var _ocspStapling : Bool = false;
    public var _supportedCurves : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>);
    public var _supportedPoints : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ticketSupported : Bool = false;
    public var _sessionTicket : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _supportedSignatureAlgorithmsCert : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _secureRenegotiationSupported : Bool = false;
    public var _secureRenegotiation : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _extendedMasterSecret : Bool = false;
    public var _alpnProtocols : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _scts : Bool = false;
    public var _supportedVersions : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var _cookie : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _keyShares : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>);
    public var _earlyData : Bool = false;
    public var _pskModes : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pskIdentities : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>);
    public var _pskBinders : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _quicTransportParameters : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_vers:stdgo.GoUInt16, ?_random:stdgo.Slice<stdgo.GoUInt8>, ?_sessionId:stdgo.Slice<stdgo.GoUInt8>, ?_cipherSuites:stdgo.Slice<stdgo.GoUInt16>, ?_compressionMethods:stdgo.Slice<stdgo.GoUInt8>, ?_serverName:stdgo.GoString, ?_ocspStapling:Bool, ?_supportedCurves:stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>, ?_supportedPoints:stdgo.Slice<stdgo.GoUInt8>, ?_ticketSupported:Bool, ?_sessionTicket:stdgo.Slice<stdgo.GoUInt8>, ?_supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_supportedSignatureAlgorithmsCert:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:stdgo.Slice<stdgo.GoUInt8>, ?_extendedMasterSecret:Bool, ?_alpnProtocols:stdgo.Slice<stdgo.GoString>, ?_scts:Bool, ?_supportedVersions:stdgo.Slice<stdgo.GoUInt16>, ?_cookie:stdgo.Slice<stdgo.GoUInt8>, ?_keyShares:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare>, ?_earlyData:Bool, ?_pskModes:stdgo.Slice<stdgo.GoUInt8>, ?_pskIdentities:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_pskidentity.T_pskIdentity>, ?_pskBinders:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_quicTransportParameters:stdgo.Slice<stdgo.GoUInt8>) {
        if (_raw != null) this._raw = _raw;
        if (_vers != null) this._vers = _vers;
        if (_random != null) this._random = _random;
        if (_sessionId != null) this._sessionId = _sessionId;
        if (_cipherSuites != null) this._cipherSuites = _cipherSuites;
        if (_compressionMethods != null) this._compressionMethods = _compressionMethods;
        if (_serverName != null) this._serverName = _serverName;
        if (_ocspStapling != null) this._ocspStapling = _ocspStapling;
        if (_supportedCurves != null) this._supportedCurves = _supportedCurves;
        if (_supportedPoints != null) this._supportedPoints = _supportedPoints;
        if (_ticketSupported != null) this._ticketSupported = _ticketSupported;
        if (_sessionTicket != null) this._sessionTicket = _sessionTicket;
        if (_supportedSignatureAlgorithms != null) this._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
        if (_supportedSignatureAlgorithmsCert != null) this._supportedSignatureAlgorithmsCert = _supportedSignatureAlgorithmsCert;
        if (_secureRenegotiationSupported != null) this._secureRenegotiationSupported = _secureRenegotiationSupported;
        if (_secureRenegotiation != null) this._secureRenegotiation = _secureRenegotiation;
        if (_extendedMasterSecret != null) this._extendedMasterSecret = _extendedMasterSecret;
        if (_alpnProtocols != null) this._alpnProtocols = _alpnProtocols;
        if (_scts != null) this._scts = _scts;
        if (_supportedVersions != null) this._supportedVersions = _supportedVersions;
        if (_cookie != null) this._cookie = _cookie;
        if (_keyShares != null) this._keyShares = _keyShares;
        if (_earlyData != null) this._earlyData = _earlyData;
        if (_pskModes != null) this._pskModes = _pskModes;
        if (_pskIdentities != null) this._pskIdentities = _pskIdentities;
        if (_pskBinders != null) this._pskBinders = _pskBinders;
        if (_quicTransportParameters != null) this._quicTransportParameters = _quicTransportParameters;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_vers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "_random", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_sessionId", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_cipherSuites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }) }, optional : false },
{ name : "_compressionMethods", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_serverName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_ocspStapling", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_supportedCurves", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_curveiddotcurveid.__type__stdgodot_internaldotcryptodottlsdotTls_curveiddotCurveID }) }, optional : false },
{ name : "_supportedPoints", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_ticketSupported", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sessionTicket", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_supportedSignatureAlgorithms", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme }) }, optional : false },
{ name : "_supportedSignatureAlgorithmsCert", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme }) }, optional : false },
{ name : "_secureRenegotiationSupported", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_secureRenegotiation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_extendedMasterSecret", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_alpnProtocols", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_scts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_supportedVersions", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }) }, optional : false },
{ name : "_cookie", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_keyShares", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_keysharedott_keyshare.__type__stdgodot_internaldotcryptodottlsdotTls_t_keysharedotT_keyShare }) }, optional : false },
{ name : "_earlyData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_pskModes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_pskIdentities", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_pskidentitydott_pskidentity.__type__stdgodot_internaldotcryptodottlsdotTls_t_pskidentitydotT_pskIdentity }) }, optional : false },
{ name : "_pskBinders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "_quicTransportParameters", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_clientHelloMsg(
_raw,
_vers,
_random,
_sessionId,
_cipherSuites,
_compressionMethods,
_serverName,
_ocspStapling,
_supportedCurves,
_supportedPoints,
_ticketSupported,
_sessionTicket,
_supportedSignatureAlgorithms,
_supportedSignatureAlgorithmsCert,
_secureRenegotiationSupported,
_secureRenegotiation,
_extendedMasterSecret,
_alpnProtocols,
_scts,
_supportedVersions,
_cookie,
_keyShares,
_earlyData,
_pskModes,
_pskIdentities,
_pskBinders,
_quicTransportParameters);
    }
}
