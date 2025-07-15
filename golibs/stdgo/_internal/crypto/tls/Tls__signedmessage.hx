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
function _signedMessage(_sigHash:stdgo._internal.crypto.Crypto_hash.Hash, _context:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L82"
        if (_sigHash == (stdgo._internal.crypto.tls.Tls__directsigning._directSigning)) {
            var _b = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L84"
            _b.write(stdgo._internal.crypto.tls.Tls__signaturepadding._signaturePadding);
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L85"
            stdgo._internal.io.Io_writestring.writeString(stdgo.Go.asInterface(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), _context?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L86"
            _b.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
            //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L87"
            return _b.bytes();
        };
        var _h = @:assignType (_sigHash.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L90"
        _h.write(stdgo._internal.crypto.tls.Tls__signaturepadding._signaturePadding);
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L91"
        stdgo._internal.io.Io_writestring.writeString(_h, _context?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L92"
        _h.write(_transcript.sum((null : stdgo.Slice<stdgo.GoUInt8>)));
        //"file:///Users/o/.go/go1.21.3/src/crypto/tls/auth.go#L93"
        return _h.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
