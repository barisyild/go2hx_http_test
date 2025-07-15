package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
function new_(_hash:() -> stdgo._internal.hash.Hash_hash.Hash, _secret:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.Io_reader.Reader {
        var _prk = _internal.golangdotorg.x.crypto.hkdf.Hkdf_extract.extract(_hash, _secret, _salt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L92"
        return _internal.golangdotorg.x.crypto.hkdf.Hkdf_expand.expand(_hash, _prk, _info);
    }
