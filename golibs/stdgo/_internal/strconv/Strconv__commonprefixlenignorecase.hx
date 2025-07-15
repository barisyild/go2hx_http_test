package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _commonPrefixLenIgnoreCase(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoInt {
        var _n = @:assignType (_prefix.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L22"
        if ((_n > (_s.length) : Bool)) {
            _n = (_s.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L25"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L27"
                if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
//"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L30"
                if (_c != (_prefix[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L31"
                    return _i;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/atof.go#L34"
        return _n;
    }
