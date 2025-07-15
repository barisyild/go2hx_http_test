package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _medianAdjacentOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__0(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__1(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__2(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__3(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__4(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__5(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__6(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__7(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__8(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__9(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__10(_data, _a, _swaps);
private function _medianAdjacentOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L318"
        return (stdgo._internal.slices.Slices__medianordered._medianOrdered(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps) : stdgo.GoInt);
    }
overload inline extern function _medianAdjacentOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianAdjacentOrdered__tp__11(_data, _a, _swaps);
