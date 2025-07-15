package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function isSorted(_data:stdgo._internal.sort.Sort_interface.Interface):Bool {
        var _n = @:assignType (_data.len() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L107"
        {
            var _i = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L108"
                if (_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L109"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/sort.go#L112"
        return true;
    }
