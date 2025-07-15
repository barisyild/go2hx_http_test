package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _trim(_a:stdgo.Ref<stdgo._internal.strconv.Strconv_t_decimal.T_decimal>):Void {
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L72"
        while ((((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd > (0 : stdgo.GoInt) : Bool) && ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d[((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L73"
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd--;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L75"
        if ((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nd == ((0 : stdgo.GoInt))) {
            (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dp = (0 : stdgo.GoInt);
        };
    }
