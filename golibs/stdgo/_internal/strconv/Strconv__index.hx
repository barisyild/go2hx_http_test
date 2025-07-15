package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function _index(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L12"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L13"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L14"
                    return _i;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/bytealg_bootstrap.go#L17"
        return (-1 : stdgo.GoInt);
    }
