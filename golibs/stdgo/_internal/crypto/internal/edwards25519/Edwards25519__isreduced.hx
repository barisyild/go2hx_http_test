package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _isReduced(_s:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L178"
        if ((_s.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L179"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L182"
        {
            var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L183"
                if ((_s[(_i : stdgo.GoInt)] > stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L185"
                    return false;
                } else if ((_s[(_i : stdgo.GoInt)] < stdgo._internal.crypto.internal.edwards25519.Edwards25519__scalarminusonebytes._scalarMinusOneBytes[(_i : stdgo.GoInt)] : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L187"
                    return true;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalar.go#L190"
        return true;
    }
