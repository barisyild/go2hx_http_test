package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(stdgo.GoInt, stdgo.GoInt) -> Bool):Bool {
        var _rv = @:assignType (stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_x)?.__copy__() : stdgo._internal.internal.reflectlite.Reflectlite_value.Value);
        var _n = @:assignType (_rv.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/slice.go#L46"
        {
            var _i = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/slice.go#L47"
                if (_less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/slice.go#L48"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/slice.go#L51"
        return true;
    }
