package stdgo._internal.math.bits;
function mul64(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _hi = (0 : stdgo.GoUInt64), _lo = (0 : stdgo.GoUInt64);
        {};
        var _x0 = @:assignType (_x & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _x1 = @:assignType (_x >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _y0 = @:assignType (_y & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _y1 = @:assignType (_y >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _w0 = @:assignType (_x0 * _y0 : stdgo.GoUInt64);
        var _t = @:assignType ((_x1 * _y0 : stdgo.GoUInt64) + (_w0 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _w1 = @:assignType (_t & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _w2 = @:assignType (_t >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _w1 = (_w1 + ((_x0 * _y1 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _hi = (((_x1 * _y1 : stdgo.GoUInt64) + _w2 : stdgo.GoUInt64) + (_w1 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        _lo = (_x * _y : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L483"
        return { _0 : _hi, _1 : _lo };
    }
