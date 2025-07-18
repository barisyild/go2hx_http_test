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
class T_serverHandshakeStateTLS13_asInterface {
    @:keep
    public dynamic function _readClientFinished():stdgo.Error return @:_0 __self__.value._readClientFinished();
    @:keep
    public dynamic function _readClientCertificate():stdgo.Error return @:_0 __self__.value._readClientCertificate();
    @:keep
    public dynamic function _sendSessionTickets():stdgo.Error return @:_0 __self__.value._sendSessionTickets();
    @:keep
    public dynamic function _shouldSendSessionTickets():Bool return @:_0 __self__.value._shouldSendSessionTickets();
    @:keep
    public dynamic function _sendServerFinished():stdgo.Error return @:_0 __self__.value._sendServerFinished();
    @:keep
    public dynamic function _sendServerCertificate():stdgo.Error return @:_0 __self__.value._sendServerCertificate();
    @:keep
    public dynamic function _requestClientCert():Bool return @:_0 __self__.value._requestClientCert();
    @:keep
    public dynamic function _sendServerParameters():stdgo.Error return @:_0 __self__.value._sendServerParameters();
    @:keep
    public dynamic function _doHelloRetryRequest(_selectedGroup:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.Error return @:_0 __self__.value._doHelloRetryRequest(_selectedGroup);
    @:keep
    public dynamic function _sendDummyChangeCipherSpec():stdgo.Error return @:_0 __self__.value._sendDummyChangeCipherSpec();
    @:keep
    public dynamic function _pickCertificate():stdgo.Error return @:_0 __self__.value._pickCertificate();
    @:keep
    public dynamic function _checkForResumption():stdgo.Error return @:_0 __self__.value._checkForResumption();
    @:keep
    public dynamic function _processClientHello():stdgo.Error return @:_0 __self__.value._processClientHello();
    @:keep
    public dynamic function _handshake():stdgo.Error return @:_0 __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13pointer.T_serverHandshakeStateTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
