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
function _shr(_x:stdgo.Ref<stdgo._internal.math.big.Big_t_decimal.T_decimal>, _s:stdgo.GoUInt):Void {
        var _r = @:assignType (0 : stdgo.GoInt);
        var _n:stdgo._internal.math.big.Big_word.Word = ((0 : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L110"
        while ((((_n >> _s : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) && (_r < ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) : Bool) : Bool)) {
            var _ch = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L112"
            _r++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) + _ch : stdgo._internal.math.big.Big_word.Word) - (48u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L115"
        if (_n == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L118"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L120"
        while ((_n >> _s : stdgo._internal.math.big.Big_word.Word) == ((0u32 : stdgo._internal.math.big.Big_word.Word))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L121"
            _r++;
            _n = (_n * ((10u32 : stdgo._internal.math.big.Big_word.Word)) : stdgo._internal.math.big.Big_word.Word);
        };
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exp = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._exp + (((1 : stdgo.GoInt) - _r : stdgo.GoInt)) : stdgo.GoInt);
        var _w = @:assignType (0 : stdgo.GoInt);
        var _mask = @:assignType (((1u32 : stdgo._internal.math.big.Big_word.Word) << _s : stdgo._internal.math.big.Big_word.Word) - (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L129"
        while ((_r < ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) : Bool)) {
            var _ch = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_r : stdgo.GoInt)] : stdgo._internal.math.big.Big_word.Word);
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L131"
            _r++;
            var _d = @:assignType (_n >> _s : stdgo._internal.math.big.Big_word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_word.Word);
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L135"
            _w++;
            _n = (((_n * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) + _ch : stdgo._internal.math.big.Big_word.Word) - (48u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L140"
        while (((_n > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool) && (_w < ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.length) : Bool) : Bool)) {
            var _d = @:assignType (_n >> _s : stdgo._internal.math.big.Big_word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_word.Word);
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant[(_w : stdgo.GoInt)] = ((_d + (48u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L144"
            _w++;
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        };
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.__slice__(0, _w) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L150"
        while ((_n > (0u32 : stdgo._internal.math.big.Big_word.Word) : Bool)) {
            var _d = @:assignType (_n >> _s : stdgo._internal.math.big.Big_word.Word);
            _n = (_n & (_mask) : stdgo._internal.math.big.Big_word.Word);
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mant.__append__(((_d + (48u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n * (10u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/decimal.go#L157"
        stdgo._internal.math.big.Big__trim._trim(_x);
    }
