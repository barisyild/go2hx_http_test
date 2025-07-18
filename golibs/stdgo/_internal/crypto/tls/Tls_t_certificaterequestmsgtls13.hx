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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13_static_extension.T_certificateRequestMsgTLS13_static_extension) @:using(stdgo._internal.crypto.tls.Tls_t_certificaterequestmsgtls13_static_extension.T_certificateRequestMsgTLS13_static_extension) class T_certificateRequestMsgTLS13 {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _ocspStapling : Bool = false;
    public var _scts : Bool = false;
    public var _supportedSignatureAlgorithms : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _supportedSignatureAlgorithmsCert : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme> = (null : stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>);
    public var _certificateAuthorities : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_ocspStapling:Bool, ?_scts:Bool, ?_supportedSignatureAlgorithms:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_supportedSignatureAlgorithmsCert:stdgo.Slice<stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme>, ?_certificateAuthorities:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) {
        if (_raw != null) this._raw = _raw;
        if (_ocspStapling != null) this._ocspStapling = _ocspStapling;
        if (_scts != null) this._scts = _scts;
        if (_supportedSignatureAlgorithms != null) this._supportedSignatureAlgorithms = _supportedSignatureAlgorithms;
        if (_supportedSignatureAlgorithmsCert != null) this._supportedSignatureAlgorithmsCert = _supportedSignatureAlgorithmsCert;
        if (_certificateAuthorities != null) this._certificateAuthorities = _certificateAuthorities;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_raw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_ocspStapling", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_scts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_supportedSignatureAlgorithms", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme }) }, optional : false }, { name : "_supportedSignatureAlgorithmsCert", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_signatureschemedotsignaturescheme.__type__stdgodot_internaldotcryptodottlsdotTls_signatureschemedotSignatureScheme }) }, optional : false }, { name : "_certificateAuthorities", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }) }, optional : false }])));
    public function __copy__() {
        return new T_certificateRequestMsgTLS13(_raw, _ocspStapling, _scts, _supportedSignatureAlgorithms, _supportedSignatureAlgorithmsCert, _certificateAuthorities);
    }
}
