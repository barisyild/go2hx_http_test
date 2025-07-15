package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function parseCRL(_crlBytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1684"
        if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_crlBytes, stdgo._internal.crypto.x509.X509__pemcrlprefix._pemCRLPrefix)) {
            var __tmp__ = stdgo._internal.encoding.pem.Pem_decode.decode(_crlBytes), _block:stdgo.Ref<stdgo._internal.encoding.pem.Pem_block.Block> = __tmp__._0, __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1686"
            if ((({
                final value = _block;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _block ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type == stdgo._internal.crypto.x509.X509__pemtype._pemType) : Bool)) {
                _crlBytes = (@:checkr _block ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bytes;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/x509.go#L1690"
        return stdgo._internal.crypto.x509.X509_parsedercrl.parseDERCRL(_crlBytes);
    }
