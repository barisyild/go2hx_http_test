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
@:structInit @:using(stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension) @:using(stdgo._internal.crypto.x509.X509_certpool_static_extension.CertPool_static_extension) class CertPool {
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>);
    public var _lazyCerts : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>);
    public var _haveSum : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool> = (null : stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>);
    public var _systemPool : Bool = false;
    public function new(?_byName:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>, ?_lazyCerts:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_lazycert.T_lazyCert>, ?_haveSum:stdgo.GoMap<stdgo._internal.crypto.x509.X509_t_sum224.T_sum224, Bool>, ?_systemPool:Bool) {
        if (_byName != null) this._byName = _byName;
        if (_lazyCerts != null) this._lazyCerts = _lazyCerts;
        if (_haveSum != null) this._haveSum = _haveSum;
        if (_systemPool != null) this._systemPool = _systemPool;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_byName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }) }, optional : false }, { name : "_lazyCerts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_lazycertdott_lazycert.__type__stdgodot_internaldotcryptodotx509dotX509_t_lazycertdotT_lazyCert }) }, optional : false }, { name : "_haveSum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotx509dotx509_t_sum224dott_sum224.__type__stdgodot_internaldotcryptodotx509dotX509_t_sum224dotT_sum224 }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }, { name : "_systemPool", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new CertPool(_byName, _lazyCerts, _haveSum, _systemPool);
    }
}
