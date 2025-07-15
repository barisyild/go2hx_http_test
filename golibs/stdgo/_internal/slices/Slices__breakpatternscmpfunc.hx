package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _breakPatternsCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L242"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L246"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L248"
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
{
                        final __tmp__0 = _data[(_a + _other : stdgo.GoInt)];
                        final __tmp__1 = _data[(_idx : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_idx : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_a + _other : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _idx++;
                };
            };
        };
    }
overload inline extern function _breakPatternsCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _breakPatternsCmpFunc__tp__0(_data, _a, _b, _cmp);
