package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _breakPatternsOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__0(_data, _a, _b);
private function _breakPatternsOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__1(_data, _a, _b);
private function _breakPatternsOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__2(_data, _a, _b);
private function _breakPatternsOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__3(_data, _a, _b);
private function _breakPatternsOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__4(_data, _a, _b);
private function _breakPatternsOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__5(_data, _a, _b);
private function _breakPatternsOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__6(_data, _a, _b);
private function _breakPatternsOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__7(_data, _a, _b);
private function _breakPatternsOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__8(_data, _a, _b);
private function _breakPatternsOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__9(_data, _a, _b);
private function _breakPatternsOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__10(_data, _a, _b);
private function _breakPatternsOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L244"
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : stdgo._internal.slices.Slices_t_xorshift.T_xorshift);
            var _modulus = (stdgo._internal.slices.Slices__nextpoweroftwo._nextPowerOfTwo(_length) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L248"
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    var _other = ((((stdgo.Go.pointer(_random) : stdgo._internal.slices.Slices_t_xorshiftpointer.T_xorshiftPointer).next() : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L250"
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
{
                        final __tmp__0 = _data[(_a + _other : stdgo.GoInt)].__copy__();
                        final __tmp__1 = _data[(_idx : stdgo.GoInt)].__copy__();
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
overload inline extern function _breakPatternsOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt):Void _breakPatternsOrdered__tp__11(_data, _a, _b);
