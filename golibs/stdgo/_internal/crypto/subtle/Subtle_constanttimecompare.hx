package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeCompare(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L14"
        if ((_x.length) != ((_y.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L15"
            return (0 : stdgo.GoInt);
        };
        var _v:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L20"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _v = (_v | ((_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L24"
        return stdgo._internal.crypto.subtle.Subtle_constanttimebyteeq.constantTimeByteEq(_v, (0 : stdgo.GoUInt8));
    }
