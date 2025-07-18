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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg_static_extension.T_encryptedExtensionsMsg_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg_static_extension.T_encryptedExtensionsMsg_static_extension) class T_encryptedExtensionsMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _alpnProtocol : stdgo.GoString = "";
    public var _quicTransportParameters : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _earlyData : Bool = false;
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_alpnProtocol:stdgo.GoString, ?_quicTransportParameters:stdgo.Slice<stdgo.GoUInt8>, ?_earlyData:Bool) {
        if (_raw != null) this._raw = _raw;
        if (_alpnProtocol != null) this._alpnProtocol = _alpnProtocol;
        if (_quicTransportParameters != null) this._quicTransportParameters = _quicTransportParameters;
        if (_earlyData != null) this._earlyData = _earlyData;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_alpnProtocol", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_quicTransportParameters", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_earlyData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_encryptedExtensionsMsg(_raw, _alpnProtocol, _quicTransportParameters, _earlyData);
    }
}
