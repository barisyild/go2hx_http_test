package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function formatBool(_b:Bool):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L22"
        if (_b) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L23"
            return ("true" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atob.go#L25"
        return ("false" : stdgo.GoString);
    }
