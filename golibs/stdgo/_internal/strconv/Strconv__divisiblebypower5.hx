package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _divisibleByPower5(_m:stdgo.GoUInt64, _k:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L547"
        if (_m == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L548"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L550"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _k : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L551"
                if ((_m % (5i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != ((0i64 : stdgo.GoUInt64))) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L552"
                    return false;
                };
_m = (_m / ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/ftoaryu.go#L556"
        return true;
    }
