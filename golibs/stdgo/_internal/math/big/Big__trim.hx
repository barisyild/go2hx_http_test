package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
function _trim(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>):Void {
        var _i = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L263"
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L264"
            _i--;
        };
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L267"
        if (_i == ((0 : stdgo.GoInt))) {
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exp = (0 : stdgo.GoInt);
        };
    }
