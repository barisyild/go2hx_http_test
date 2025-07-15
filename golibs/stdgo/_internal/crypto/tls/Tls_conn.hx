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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_conn_static_extension.Conn_static_extension) @:using(stdgo._internal.crypto.tls.Tls_conn_static_extension.Conn_static_extension) class Conn {
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _isClient : Bool = false;
    public var _handshakeFn : stdgo._internal.context.Context_context.Context -> stdgo.Error = null;
    public var _quic : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState>);
    public var _isHandshakeComplete : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _handshakeMutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _handshakeErr : stdgo.Error = (null : stdgo.Error);
    public var _vers : stdgo.GoUInt16 = 0;
    public var _haveVers : Bool = false;
    public var _config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var _handshakes : stdgo.GoInt = 0;
    public var _extMasterSecret : Bool = false;
    public var _didResume : Bool = false;
    public var _cipherSuite : stdgo.GoUInt16 = 0;
    public var _ocspResponse : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _scts : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _peerCertificates : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>);
    public var _activeCertHandles : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>);
    public var _verifiedChains : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>> = (null : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>);
    public var _serverName : stdgo.GoString = "";
    public var _secureRenegotiation : Bool = false;
    public var _ekm : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = null;
    public var _resumptionSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ticketKeys : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>);
    public var _clientFinishedIsFirst : Bool = false;
    public var _closeNotifyErr : stdgo.Error = (null : stdgo.Error);
    public var _closeNotifySent : Bool = false;
    public var _clientFinished : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var _serverFinished : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var _clientProtocol : stdgo.GoString = "";
    public var _in : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn = ({} : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn);
    public var _out : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn = ({} : stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn);
    public var _rawInput : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _input : stdgo._internal.bytes.Bytes_reader.Reader = ({} : stdgo._internal.bytes.Bytes_reader.Reader);
    public var _hand : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _buffering : Bool = false;
    public var _sendBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _bytesSent : stdgo.GoInt64 = 0;
    public var _packetsSent : stdgo.GoInt64 = 0;
    public var _retryCount : stdgo.GoInt = 0;
    public var _activeCall : stdgo._internal.sync.atomic_.Atomic__int32.Int32 = ({} : stdgo._internal.sync.atomic_.Atomic__int32.Int32);
    public var _tmp : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public function new(?_conn:stdgo._internal.net.Net_conn.Conn, ?_isClient:Bool, ?_handshakeFn:stdgo._internal.context.Context_context.Context -> stdgo.Error, ?_quic:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_quicstate.T_quicState>, ?_isHandshakeComplete:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_handshakeMutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_handshakeErr:stdgo.Error, ?_vers:stdgo.GoUInt16, ?_haveVers:Bool, ?_config:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?_handshakes:stdgo.GoInt, ?_extMasterSecret:Bool, ?_didResume:Bool, ?_cipherSuite:stdgo.GoUInt16, ?_ocspResponse:stdgo.Slice<stdgo.GoUInt8>, ?_scts:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_peerCertificates:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>, ?_activeCertHandles:stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_activecert.T_activeCert>>, ?_verifiedChains:stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>>, ?_serverName:stdgo.GoString, ?_secureRenegotiation:Bool, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }, ?_resumptionSecret:stdgo.Slice<stdgo.GoUInt8>, ?_ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>, ?_clientFinishedIsFirst:Bool, ?_closeNotifyErr:stdgo.Error, ?_closeNotifySent:Bool, ?_clientFinished:stdgo.GoArray<stdgo.GoUInt8>, ?_serverFinished:stdgo.GoArray<stdgo.GoUInt8>, ?_clientProtocol:stdgo.GoString, ?_in:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, ?_out:stdgo._internal.crypto.tls.Tls_t_halfconn.T_halfConn, ?_rawInput:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_input:stdgo._internal.bytes.Bytes_reader.Reader, ?_hand:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_buffering:Bool, ?_sendBuf:stdgo.Slice<stdgo.GoUInt8>, ?_bytesSent:stdgo.GoInt64, ?_packetsSent:stdgo.GoInt64, ?_retryCount:stdgo.GoInt, ?_activeCall:stdgo._internal.sync.atomic_.Atomic__int32.Int32, ?_tmp:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_conn != null) this._conn = _conn;
        if (_isClient != null) this._isClient = _isClient;
        if (_handshakeFn != null) this._handshakeFn = _handshakeFn;
        if (_quic != null) this._quic = _quic;
        if (_isHandshakeComplete != null) this._isHandshakeComplete = _isHandshakeComplete;
        if (_handshakeMutex != null) this._handshakeMutex = _handshakeMutex;
        if (_handshakeErr != null) this._handshakeErr = _handshakeErr;
        if (_vers != null) this._vers = _vers;
        if (_haveVers != null) this._haveVers = _haveVers;
        if (_config != null) this._config = _config;
        if (_handshakes != null) this._handshakes = _handshakes;
        if (_extMasterSecret != null) this._extMasterSecret = _extMasterSecret;
        if (_didResume != null) this._didResume = _didResume;
        if (_cipherSuite != null) this._cipherSuite = _cipherSuite;
        if (_ocspResponse != null) this._ocspResponse = _ocspResponse;
        if (_scts != null) this._scts = _scts;
        if (_peerCertificates != null) this._peerCertificates = _peerCertificates;
        if (_activeCertHandles != null) this._activeCertHandles = _activeCertHandles;
        if (_verifiedChains != null) this._verifiedChains = _verifiedChains;
        if (_serverName != null) this._serverName = _serverName;
        if (_secureRenegotiation != null) this._secureRenegotiation = _secureRenegotiation;
        if (_ekm != null) this._ekm = _ekm;
        if (_resumptionSecret != null) this._resumptionSecret = _resumptionSecret;
        if (_ticketKeys != null) this._ticketKeys = _ticketKeys;
        if (_clientFinishedIsFirst != null) this._clientFinishedIsFirst = _clientFinishedIsFirst;
        if (_closeNotifyErr != null) this._closeNotifyErr = _closeNotifyErr;
        if (_closeNotifySent != null) this._closeNotifySent = _closeNotifySent;
        if (_clientFinished != null) this._clientFinished = _clientFinished;
        if (_serverFinished != null) this._serverFinished = _serverFinished;
        if (_clientProtocol != null) this._clientProtocol = _clientProtocol;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
        if (_rawInput != null) this._rawInput = _rawInput;
        if (_input != null) this._input = _input;
        if (_hand != null) this._hand = _hand;
        if (_buffering != null) this._buffering = _buffering;
        if (_sendBuf != null) this._sendBuf = _sendBuf;
        if (_bytesSent != null) this._bytesSent = _bytesSent;
        if (_packetsSent != null) this._packetsSent = _packetsSent;
        if (_retryCount != null) this._retryCount = _retryCount;
        if (_activeCall != null) this._activeCall = _activeCall;
        if (_tmp != null) this._tmp = _tmp;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_conn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false },
{ name : "_isClient", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_handshakeFn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_quic", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_quicstatedott_quicstate.__type__stdgodot_internaldotcryptodottlsdotTls_t_quicstatedotT_quicState }) }, optional : false },
{ name : "_isHandshakeComplete", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false },
{ name : "_handshakeMutex", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_handshakeErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_vers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "_haveVers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_config", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig }) }, optional : false },
{ name : "_handshakes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_extMasterSecret", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_didResume", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_cipherSuite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false },
{ name : "_ocspResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_scts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false },
{ name : "_peerCertificates", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }) }, optional : false },
{ name : "_activeCertHandles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_activecertdott_activecert.__type__stdgodot_internaldotcryptodottlsdotTls_t_activecertdotT_activeCert }) }) }, optional : false },
{ name : "_verifiedChains", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_certificatedotcertificate.__type__stdgodot_internaldotcryptodotx509dotX509_certificatedotCertificate }) }) }) }, optional : false },
{ name : "_serverName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_secureRenegotiation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_ekm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_resumptionSecret", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_ticketKeys", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_ticketkeydott_ticketkey.__type__stdgodot_internaldotcryptodottlsdotTls_t_ticketkeydotT_ticketKey }) }, optional : false },
{ name : "_clientFinishedIsFirst", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_closeNotifyErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_closeNotifySent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_clientFinished", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 12) }, optional : false },
{ name : "_serverFinished", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 12) }, optional : false },
{ name : "_clientProtocol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_in", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_halfconndott_halfconn.__type__stdgodot_internaldotcryptodottlsdotTls_t_halfconndotT_halfConn }, optional : false },
{ name : "_out", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_t_halfconndott_halfconn.__type__stdgodot_internaldotcryptodottlsdotTls_t_halfconndotT_halfConn }, optional : false },
{ name : "_rawInput", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }, optional : false },
{ name : "_input", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }, optional : false },
{ name : "_hand", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }, optional : false },
{ name : "_buffering", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sendBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_bytesSent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_packetsSent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_retryCount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_activeCall", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__int32dotint32.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__int32dotInt32 }, optional : false },
{ name : "_tmp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 16) }, optional : false }])));
    public function __copy__() {
        return new Conn(
_conn,
_isClient,
_handshakeFn,
_quic,
_isHandshakeComplete,
_handshakeMutex,
_handshakeErr,
_vers,
_haveVers,
_config,
_handshakes,
_extMasterSecret,
_didResume,
_cipherSuite,
_ocspResponse,
_scts,
_peerCertificates,
_activeCertHandles,
_verifiedChains,
_serverName,
_secureRenegotiation,
_ekm,
_resumptionSecret,
_ticketKeys,
_clientFinishedIsFirst,
_closeNotifyErr,
_closeNotifySent,
_clientFinished,
_serverFinished,
_clientProtocol,
_in,
_out,
_rawInput,
_input,
_hand,
_buffering,
_sendBuf,
_bytesSent,
_packetsSent,
_retryCount,
_activeCall,
_tmp);
    }
}
