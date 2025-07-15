package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _breakPatterns_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = @:assignType (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L242"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = @:assignType (_length : stdgo._internal.sort.Sort_t_xorshift.T_xorshift);
            var _modulus = @:assignType (stdgo._internal.sort.Sort__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L246"
            {
                var _idx = @:assignType ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = @:assignType ((((stdgo.Go.pointer(_random) : stdgo._internal.sort.Sort_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L248"
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortfunc.go#L251"
                    _data.swap(_idx, (_a + _other : stdgo.GoInt));
                    _idx++;
                };
            };
        };
    }
