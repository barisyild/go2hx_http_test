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
var _rsaSignatureSchemes : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10> = (new stdgo.Slice<stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10>(7, 7, ...[({ _scheme : (2052 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((5u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (772 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (2053 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((6u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (772 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (2054 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((7u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() * (2 : stdgo.GoInt) : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (772 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (1025 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((19 : stdgo.GoInt) + (5u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() : stdgo.GoInt) + (11 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (771 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (1281 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((19 : stdgo.GoInt) + (6u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() : stdgo.GoInt) + (11 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (771 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (1537 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((19 : stdgo.GoInt) + (7u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() : stdgo.GoInt) + (11 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (771 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10), ({ _scheme : (513 : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (((15 : stdgo.GoInt) + (3u32 : stdgo._internal.crypto.Crypto_hash.Hash).size() : stdgo.GoInt) + (11 : stdgo.GoInt) : stdgo.GoInt), _maxVersion : (771 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10)].concat([for (i in 7 ... (7 > 7 ? 7 : 7 : stdgo.GoInt).toBasic()) ({ _scheme : ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_signaturescheme.SignatureScheme), _minModulusBytes : (0 : stdgo.GoInt), _maxVersion : (0 : stdgo.GoUInt16) } : stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10)])) : stdgo.Slice<stdgo._internal.crypto.tls.Tls_t__struct_10.T__struct_10>);
