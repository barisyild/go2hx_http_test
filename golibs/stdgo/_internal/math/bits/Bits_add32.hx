package stdgo._internal.math.bits;
function add32(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32, _carry:stdgo.GoUInt32):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _sum = (0 : stdgo.GoUInt32), _carryOut = (0 : stdgo.GoUInt32);
        var _sum64 = @:assignType (((_x : stdgo.GoUInt64) + (_y : stdgo.GoUInt64) : stdgo.GoUInt64) + (_carry : stdgo.GoUInt64) : stdgo.GoUInt64);
        _sum = (_sum64 : stdgo.GoUInt32);
        _carryOut = ((_sum64 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L378"
        return { _0 : _sum, _1 : _carryOut };
    }
