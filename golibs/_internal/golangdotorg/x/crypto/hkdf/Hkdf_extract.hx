package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
function extract(_hash:() -> stdgo._internal.hash.Hash_hash.Hash, _secret:stdgo.Slice<stdgo.GoUInt8>, _salt:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L27"
        if (_salt == null) {
            _salt = (new stdgo.Slice<stdgo.GoUInt8>((_hash().size() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _extractor = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _salt) : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L31"
        _extractor.write(_secret);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L32"
        return _extractor.sum((null : stdgo.Slice<stdgo.GoUInt8>));
    }
