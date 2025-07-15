package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _asn1Signed(_out:stdgo.Pointer<stdgo.GoInt64>, _n:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _length = @:assignType (_n.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L360"
        if ((_length > (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L361"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L363"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                _out.value = (_out.value << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
_out.value = (_out.value | ((_n[(_i : stdgo.GoInt)] : stdgo.GoInt64)) : stdgo.GoInt64);
                _i++;
            };
        };
        _out.value = (_out.value << (((64 : stdgo.GoUInt8) - ((_length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        _out.value = (_out.value >> (((64 : stdgo.GoUInt8) - ((_length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L370"
        return true;
    }
