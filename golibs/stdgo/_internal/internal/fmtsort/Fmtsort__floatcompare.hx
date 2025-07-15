package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
function _floatCompare(_a:stdgo.GoFloat64, _b:stdgo.GoFloat64):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L204"
        if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_a)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L206"
            return (-1 : stdgo.GoInt);
        } else if (stdgo._internal.internal.fmtsort.Fmtsort__isnan._isNaN(_b)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L208"
            return (1 : stdgo.GoInt);
        } else if ((_a < _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L210"
            return (-1 : stdgo.GoInt);
        } else if ((_a > _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L212"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L214"
        return (0 : stdgo.GoInt);
    }
