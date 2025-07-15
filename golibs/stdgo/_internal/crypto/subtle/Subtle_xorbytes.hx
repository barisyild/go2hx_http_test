package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function xORBytes(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = @:assignType (_x.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L13"
        if (((_y.length) < _n : Bool)) {
            _n = (_y.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L16"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L17"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L19"
        if ((_n > (_dst.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L20"
            throw new stdgo.AnyInterface(("subtle.XORBytes: dst too short" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L22"
        stdgo._internal.crypto.subtle.Subtle__xorbytes._xorBytes(stdgo.Go.pointer(_dst[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]), stdgo.Go.pointer(_y[(0 : stdgo.GoInt)]), _n);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor.go#L23"
        return _n;
    }
