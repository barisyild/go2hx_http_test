package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
function _writeVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L646"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while (true) {
                var _b = @:assignType ((_n & (127 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
_n = (_n >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L649"
                if (_n == ((0 : stdgo.GoInt))) {
                    _buf[(_i : stdgo.GoInt)] = _b;
                    //"file:///Users/o/.go/go1.21.3/src/internal/abi/type.go#L651"
                    return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
_buf[(_i : stdgo.GoInt)] = (_b | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
                _i++;
            };
        };
    }
