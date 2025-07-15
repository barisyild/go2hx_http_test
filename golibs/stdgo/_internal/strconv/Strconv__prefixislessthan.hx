package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _prefixIsLessThan(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L257"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L258"
                if ((_i >= (_b.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L259"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L261"
                if (_b[(_i : stdgo.GoInt)] != (_s[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L262"
                    return (_b[(_i : stdgo.GoInt)] < _s[(_i : stdgo.GoInt)] : Bool);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/decimal.go#L265"
        return false;
    }
