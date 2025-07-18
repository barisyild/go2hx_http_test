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
@:structInit @:using(stdgo._internal.crypto.tls.Tls_quicevent_static_extension.QUICEvent_static_extension) @:using(stdgo._internal.crypto.tls.Tls_quicevent_static_extension.QUICEvent_static_extension) class QUICEvent {
    public var kind : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind);
    public var level : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel = ((0 : stdgo.GoInt) : stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel);
    public var data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var suite : stdgo.GoUInt16 = 0;
    public function new(?kind:stdgo._internal.crypto.tls.Tls_quiceventkind.QUICEventKind, ?level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, ?data:stdgo.Slice<stdgo.GoUInt8>, ?suite:stdgo.GoUInt16) {
        if (kind != null) this.kind = kind;
        if (level != null) this.level = level;
        if (data != null) this.data = data;
        if (suite != null) this.suite = suite;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "kind", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_quiceventkinddotquiceventkind.__type__stdgodot_internaldotcryptodottlsdotTls_quiceventkinddotQUICEventKind }, optional : false }, { name : "level", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_quicencryptionleveldotquicencryptionlevel.__type__stdgodot_internaldotcryptodottlsdotTls_quicencryptionleveldotQUICEncryptionLevel }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "suite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new QUICEvent(kind, level, data, suite);
    }
}
