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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_config_static_extension.Config_static_extension) @:using(stdgo._internal.crypto.tls.Tls_config_static_extension.Config_static_extension) class Config {
    public var rand : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var time : () -> stdgo._internal.time.Time_time.Time = null;
    public var certificates : stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>);
    public var nameToCertificate : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>);
    public var getCertificate : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } = null;
    public var getClientCertificate : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } = null;
    public var getConfigForClient : stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>; var _1 : stdgo.Error; } = null;
    public var verifyPeerCertificate : (stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>) -> stdgo.Error = null;
    public var verifyConnection : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState -> stdgo.Error = null;
    public var rootCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var nextProtos : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var serverName : stdgo.GoString = "";
    public var clientAuth : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType);
    public var clientCAs : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>);
    public var insecureSkipVerify : Bool = false;
    public var cipherSuites : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var preferServerCipherSuites : Bool = false;
    public var sessionTicketsDisabled : Bool = false;
    public var sessionTicketKey : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
    public var clientSessionCache : stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache = (null : stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache);
    public var unwrapSession : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } = null;
    public var wrapSession : (stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public var minVersion : stdgo.GoUInt16 = 0;
    public var maxVersion : stdgo.GoUInt16 = 0;
    public var curvePreferences : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>);
    public var dynamicRecordSizingDisabled : Bool = false;
    public var renegotiation : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport);
    public var keyLogWriter : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _mutex : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _sessionTicketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
    public var _autoSessionTicketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
    public function new(?rand:stdgo._internal.io.Io_reader.Reader, ?time:() -> stdgo._internal.time.Time_time.Time, ?certificates:stdgo.Slice<stdgo._internal.crypto.tls.Tls_certificate.Certificate>, ?nameToCertificate:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>>, ?getCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; }, ?getClientCertificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificaterequestinfo.CertificateRequestInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; }, ?getConfigForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo> -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>; var _1 : stdgo.Error; }, ?verifyPeerCertificate:(stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>) -> stdgo.Error, ?verifyConnection:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState -> stdgo.Error, ?rootCAs:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?nextProtos:stdgo.Slice<stdgo.GoString>, ?serverName:stdgo.GoString, ?clientAuth:stdgo._internal.crypto.tls.Tls_clientauthtype.ClientAuthType, ?clientCAs:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>, ?insecureSkipVerify:Bool, ?cipherSuites:stdgo.Slice<stdgo.GoUInt16>, ?preferServerCipherSuites:Bool, ?sessionTicketsDisabled:Bool, ?sessionTicketKey:stdgo.GoArray<stdgo.GoUInt8>, ?clientSessionCache:stdgo._internal.crypto.tls.Tls_clientsessioncache.ClientSessionCache, ?unwrapSession:(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState) -> { var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; }, ?wrapSession:(stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?minVersion:stdgo.GoUInt16, ?maxVersion:stdgo.GoUInt16, ?curvePreferences:stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID>, ?dynamicRecordSizingDisabled:Bool, ?renegotiation:stdgo._internal.crypto.tls.Tls_renegotiationsupport.RenegotiationSupport, ?keyLogWriter:stdgo._internal.io.Io_writer.Writer, ?_mutex:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_sessionTicketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>, ?_autoSessionTicketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>) {
        if (rand != null) this.rand = rand;
        if (time != null) this.time = time;
        if (certificates != null) this.certificates = certificates;
        if (nameToCertificate != null) this.nameToCertificate = nameToCertificate;
        if (getCertificate != null) this.getCertificate = getCertificate;
        if (getClientCertificate != null) this.getClientCertificate = getClientCertificate;
        if (getConfigForClient != null) this.getConfigForClient = getConfigForClient;
        if (verifyPeerCertificate != null) this.verifyPeerCertificate = verifyPeerCertificate;
        if (verifyConnection != null) this.verifyConnection = verifyConnection;
        if (rootCAs != null) this.rootCAs = rootCAs;
        if (nextProtos != null) this.nextProtos = nextProtos;
        if (serverName != null) this.serverName = serverName;
        if (clientAuth != null) this.clientAuth = clientAuth;
        if (clientCAs != null) this.clientCAs = clientCAs;
        if (insecureSkipVerify != null) this.insecureSkipVerify = insecureSkipVerify;
        if (cipherSuites != null) this.cipherSuites = cipherSuites;
        if (preferServerCipherSuites != null) this.preferServerCipherSuites = preferServerCipherSuites;
        if (sessionTicketsDisabled != null) this.sessionTicketsDisabled = sessionTicketsDisabled;
        if (sessionTicketKey != null) this.sessionTicketKey = sessionTicketKey;
        if (clientSessionCache != null) this.clientSessionCache = clientSessionCache;
        if (unwrapSession != null) this.unwrapSession = unwrapSession;
        if (wrapSession != null) this.wrapSession = wrapSession;
        if (minVersion != null) this.minVersion = minVersion;
        if (maxVersion != null) this.maxVersion = maxVersion;
        if (curvePreferences != null) this.curvePreferences = curvePreferences;
        if (dynamicRecordSizingDisabled != null) this.dynamicRecordSizingDisabled = dynamicRecordSizingDisabled;
        if (renegotiation != null) this.renegotiation = renegotiation;
        if (keyLogWriter != null) this.keyLogWriter = keyLogWriter;
        if (_mutex != null) this._mutex = _mutex;
        if (_sessionTicketKeys != null) this._sessionTicketKeys = _sessionTicketKeys;
        if (_autoSessionTicketKeys != null) this._autoSessionTicketKeys = _autoSessionTicketKeys;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "rand", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false },
{ name : "time", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "certificates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate }) }, optional : false },
{ name : "nameToCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate }) }) }, optional : false },
{ name : "getCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clienthelloinfodotclienthelloinfo.__type__stdgodot_internaldotcryptodottlsdotTls_clienthelloinfodotClientHelloInfo })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "getClientCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificaterequestinfodotcertificaterequestinfo.__type__stdgodot_internaldotcryptodottlsdotTls_certificaterequestinfodotCertificateRequestInfo })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_certificatedotcertificate.__type__stdgodot_internaldotcryptodottlsdotTls_certificatedotCertificate }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "getConfigForClient", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clienthelloinfodotclienthelloinfo.__type__stdgodot_internaldotcryptodottlsdotTls_clienthelloinfodotClientHelloInfo })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "verifyPeerCertificate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }) })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "verifyConnection", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "rootCAs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certpooldotcertpool.__type__stdgodot_internaldotcryptodotx509dotX509_certpooldotCertPool }) }, optional : false },
{ name : "nextProtos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "serverName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "clientAuth", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clientauthtypedotclientauthtype.__type__stdgodot_internaldotcryptodottlsdotTls_clientauthtypedotClientAuthType }, optional : false },
{ name : "clientCAs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certpooldotcertpool.__type__stdgodot_internaldotcryptodotx509dotX509_certpooldotCertPool }) }, optional : false },
{ name : "insecureSkipVerify", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "cipherSuites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }) }, optional : false },
{ name : "preferServerCipherSuites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "sessionTicketsDisabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "sessionTicketKey", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 32) }, optional : false },
{ name : "clientSessionCache", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_clientsessioncachedotclientsessioncache.__type__stdgodot_internaldotcryptodottlsdotTls_clientsessioncachedotClientSessionCache }, optional : false },
{ name : "unwrapSession", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_sessionstatedotsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_sessionstatedotSessionState }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "wrapSession", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_sessionstatedotsessionstate.__type__stdgodot_internaldotcryptodottlsdotTls_sessionstatedotSessionState })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "minVersion", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "maxVersion", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "curvePreferences", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_curveiddotcurveid.__type__stdgodot_internaldotcryptodottlsdotTls_curveiddotCurveID }) }, optional : false },
{ name : "dynamicRecordSizingDisabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "renegotiation", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_renegotiationsupportdotrenegotiationsupport.__type__stdgodot_internaldotcryptodottlsdotTls_renegotiationsupportdotRenegotiationSupport }, optional : false },
{ name : "keyLogWriter", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false },
{ name : "_mutex", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_rwmutexdotrwmutex.__type__stdgodot_internaldotsyncdotSync_rwmutexdotRWMutex }, optional : false },
{ name : "_sessionTicketKeys", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_ticketkeydott_ticketkey.__type__stdgodot_internaldotcryptodottlsdotTls_t_ticketkeydotT_ticketKey }) }, optional : false },
{ name : "_autoSessionTicketKeys", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_ticketkeydott_ticketkey.__type__stdgodot_internaldotcryptodottlsdotTls_t_ticketkeydotT_ticketKey }) }, optional : false }])));
    public function __copy__() {
        return new Config(
rand,
time,
certificates,
nameToCertificate,
getCertificate,
getClientCertificate,
getConfigForClient,
verifyPeerCertificate,
verifyConnection,
rootCAs,
nextProtos,
serverName,
clientAuth,
clientCAs,
insecureSkipVerify,
cipherSuites,
preferServerCipherSuites,
sessionTicketsDisabled,
sessionTicketKey,
clientSessionCache,
unwrapSession,
wrapSession,
minVersion,
maxVersion,
curvePreferences,
dynamicRecordSizingDisabled,
renegotiation,
keyLogWriter,
_mutex,
_sessionTicketKeys,
_autoSessionTicketKeys);
    }
}
