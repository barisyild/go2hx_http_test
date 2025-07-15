package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
function _addXor(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoUInt32, _b:stdgo.GoUInt32):Void {
        {
            _src[(3 : stdgo.GoInt)];
            _dst[(3 : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/xor.go#L20"
        if (false) {
            var _v = @:assignType (_src[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
            _v = (_v | (((_src[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _v = (_v | (((_src[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _v = (_v | (((_src[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _v = (_v ^ ((_a + _b : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _dst[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
            _dst[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _dst[(2 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _dst[(3 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
        } else {
            _a = (_a + (_b) : stdgo.GoUInt32);
            _dst[(0 : stdgo.GoInt)] = (_src[(0 : stdgo.GoInt)] ^ (_a : stdgo.GoUInt8) : stdgo.GoUInt8);
            _dst[(1 : stdgo.GoInt)] = (_src[(1 : stdgo.GoInt)] ^ ((_a >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
            _dst[(2 : stdgo.GoInt)] = (_src[(2 : stdgo.GoInt)] ^ ((_a >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
            _dst[(3 : stdgo.GoInt)] = (_src[(3 : stdgo.GoInt)] ^ ((_a >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
    }
