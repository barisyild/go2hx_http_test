package stdgo._internal.internal.fmtsort;
import stdgo._internal.sort.Sort;
import stdgo._internal.reflect.Reflect;
function _nilCompare(_aVal:stdgo._internal.reflect.Reflect_value.Value, _bVal:stdgo._internal.reflect.Reflect_value.Value):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L190"
        if (_aVal.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L191"
            if (_bVal.isNil()) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L192"
                return { _0 : (0 : stdgo.GoInt), _1 : true };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L194"
            return { _0 : (-1 : stdgo.GoInt), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L196"
        if (_bVal.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L197"
            return { _0 : (1 : stdgo.GoInt), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fmtsort/sort.go#L199"
        return { _0 : (0 : stdgo.GoInt), _1 : false };
    }
