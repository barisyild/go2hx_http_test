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
var _signatureAlgorithmDetails : stdgo.Slice<stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13> = (new stdgo.Slice<stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13>(17, 17, ...[
({ _algo : (1 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("MD2-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturemd2withrsa._oidSignatureMD2WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (2 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("MD5-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturemd5withrsa._oidSignatureMD5WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (2u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (3 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA1-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturesha1withrsa._oidSignatureSHA1WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (3u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (3 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA1-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidisosignaturesha1withrsa._oidISOSignatureSHA1WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (3u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (4 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA256-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturesha256withrsa._oidSignatureSHA256WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (5u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (5 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA384-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturesha384withrsa._oidSignatureSHA384WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (6 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA512-RSA" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturesha512withrsa._oidSignatureSHA512WithRSA, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (13 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA256-RSAPSS" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturersapss._oidSignatureRSAPSS, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (5u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (14 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA384-RSAPSS" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturersapss._oidSignatureRSAPSS, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (15 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("SHA512-RSAPSS" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturersapss._oidSignatureRSAPSS, _pubKeyAlgo : (1 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (7 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("DSA-SHA1" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturedsawithsha1._oidSignatureDSAWithSHA1, _pubKeyAlgo : (2 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (3u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (8 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("DSA-SHA256" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignaturedsawithsha256._oidSignatureDSAWithSHA256, _pubKeyAlgo : (2 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (5u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (9 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("ECDSA-SHA1" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha1._oidSignatureECDSAWithSHA1, _pubKeyAlgo : (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (3u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (10 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("ECDSA-SHA256" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha256._oidSignatureECDSAWithSHA256, _pubKeyAlgo : (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (5u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (11 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("ECDSA-SHA384" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha384._oidSignatureECDSAWithSHA384, _pubKeyAlgo : (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (12 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("ECDSA-SHA512" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignatureecdsawithsha512._oidSignatureECDSAWithSHA512, _pubKeyAlgo : (3 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13),
({ _algo : (16 : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("Ed25519" : stdgo.GoString), _oid : stdgo._internal.crypto.x509.X509__oidsignatureed25519._oidSignatureEd25519, _pubKeyAlgo : (4 : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : (0u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({ _algo : ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm), _name : ("" : stdgo.GoString), _oid : (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier), _pubKeyAlgo : ((0 : stdgo.GoInt) : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm), _hash : ((0 : stdgo.GoUInt) : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13)])) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t__struct_13.T__struct_13>);
