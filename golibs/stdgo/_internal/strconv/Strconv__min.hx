package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _min(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L573"
        if ((_a < _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L574"
            return _a;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoa.go#L576"
        return _b;
    }
