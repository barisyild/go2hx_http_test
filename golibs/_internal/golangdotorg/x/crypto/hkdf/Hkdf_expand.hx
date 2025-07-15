package _internal.golangdotorg.x.crypto.hkdf;
import stdgo._internal.crypto.hmac.Hmac;
import stdgo._internal.errors.Errors;
function expand(_hash:() -> stdgo._internal.hash.Hash_hash.Hash, _pseudorandomKey:stdgo.Slice<stdgo.GoUInt8>, _info:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.io.Io_reader.Reader {
        var _expander = @:assignType (stdgo._internal.crypto.hmac.Hmac_new_.new_(_hash, _pseudorandomKey) : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/hkdf/hkdf.go#L85"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf.T_hkdf(_expander, _expander.size(), _info, (1 : stdgo.GoUInt8), (null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>)) : _internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf.T_hkdf), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodothkdfdothkdf_t_hkdfdott_hkdf.__type___internaldotgolangdotorgdotxdotcryptodothkdfdotHkdf_t_hkdfdotT_hkdf })) : stdgo.Ref<_internal.golangdotorg.x.crypto.hkdf.Hkdf_t_hkdf.T_hkdf>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodothkdfdothkdf_t_hkdfdott_hkdf.__type___internaldotgolangdotorgdotxdotcryptodothkdfdotHkdf_t_hkdfdotT_hkdf }));
    }
