package stdgo._internal.internal.bytealg;
function hashStrRevBytes(_sep:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _hash = @:assignType ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L72"
        {
            var _i = @:assignType ((_sep.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _hash = ((_hash * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_sep[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i--;
            };
        };
        var _pow:stdgo.GoUInt32 = (1u32 : stdgo.GoUInt32), _sq:stdgo.GoUInt32 = (16777619u32 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L76"
        {
            var _i = @:assignType (_sep.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L77"
                if ((_i & (1 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    _pow = (_pow * (_sq) : stdgo.GoUInt32);
                };
_sq = (_sq * (_sq) : stdgo.GoUInt32);
                _i = (_i >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L82"
        return { _0 : _hash, _1 : _pow };
    }
