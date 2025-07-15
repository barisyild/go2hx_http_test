package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function search(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):stdgo.GoInt {
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L62"
        while ((_i < _j : Bool)) {
            var _h = @:assignType ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L65"
            if (!_f(_h)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/search.go#L72"
        return _i;
    }
