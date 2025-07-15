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
class Config_asInterface {
    @:keep
    public dynamic function _decryptTicket(_encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._decryptTicket(_encrypted, _ticketKeys);
    @:keep
    public dynamic function decryptTicket(_identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } return @:_0 __self__.value.decryptTicket(_identity, _cs);
    @:keep
    public dynamic function _encryptTicket(_state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encryptTicket(_state, _ticketKeys);
    @:keep
    public dynamic function encryptTicket(_cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.encryptTicket(_cs, _ss);
    @:keep
    public dynamic function _writeKeyLog(_label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeKeyLog(_label, _clientRandom, _secret);
    @:keep
    public dynamic function buildNameToCertificate():Void @:_0 __self__.value.buildNameToCertificate();
    @:keep
    public dynamic function _getCertificate(_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } return @:_0 __self__.value._getCertificate(_clientHello);
    @:keep
    public dynamic function _mutualVersion(_isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } return @:_0 __self__.value._mutualVersion(_isClient, _peerVersions);
    @:keep
    public dynamic function _supportsCurve(_curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID):Bool return @:_0 __self__.value._supportsCurve(_curve);
    @:keep
    public dynamic function _curvePreferences():stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> return @:_0 __self__.value._curvePreferences();
    @:keep
    public dynamic function _maxSupportedVersion(_isClient:Bool):stdgo.GoUInt16 return @:_0 __self__.value._maxSupportedVersion(_isClient);
    @:keep
    public dynamic function _supportedVersions(_isClient:Bool):stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._supportedVersions(_isClient);
    @:keep
    public dynamic function _cipherSuites():stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._cipherSuites();
    @:keep
    public dynamic function _time():stdgo._internal.time.Time_time.Time return @:_0 __self__.value._time();
    @:keep
    public dynamic function _rand():stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value._rand();
    @:keep
    public dynamic function setSessionTicketKeys(_keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value.setSessionTicketKeys(_keys);
    @:keep
    public dynamic function _ticketKeys(_configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> return @:_0 __self__.value._ticketKeys(_configForClient);
    @:keep
    public dynamic function _initLegacySessionTicketKeyRLocked():Void @:_0 __self__.value._initLegacySessionTicketKeyRLocked();
    @:keep
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_0 __self__.value.clone();
    @:keep
    public dynamic function _ticketKeyFromBytes(_b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey return @:_0 __self__.value._ticketKeyFromBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
