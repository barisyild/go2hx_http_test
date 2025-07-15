package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function _asn1Unsigned(_out:stdgo.Pointer<stdgo.GoUInt64>, _n:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _length = @:assignType (_n.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L383"
        if (((_length > (9 : stdgo.GoInt) : Bool) || (_length == ((9 : stdgo.GoInt)) && _n[(0 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L385"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L387"
        if ((_n[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L389"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L391"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                _out.value = (_out.value << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
_out.value = (_out.value | ((_n[(_i : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L395"
        return true;
    }
