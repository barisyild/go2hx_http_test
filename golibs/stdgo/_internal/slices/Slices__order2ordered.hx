package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _order2Ordered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__0(_data, _a, _b, _swaps);
private function _order2Ordered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__1(_data, _a, _b, _swaps);
private function _order2Ordered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__2(_data, _a, _b, _swaps);
private function _order2Ordered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__3(_data, _a, _b, _swaps);
private function _order2Ordered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__4(_data, _a, _b, _swaps);
private function _order2Ordered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__5(_data, _a, _b, _swaps);
private function _order2Ordered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__6(_data, _a, _b, _swaps);
private function _order2Ordered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__7(_data, _a, _b, _swaps);
private function _order2Ordered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__8(_data, _a, _b, _swaps);
private function _order2Ordered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__9(_data, _a, _b, _swaps);
private function _order2Ordered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__10(_data, _a, _b, _swaps);
private function _order2Ordered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L301"
        if ((stdgo._internal.cmp.Cmp_less.less(_data[(_b : stdgo.GoInt)]?.__copy__(), _data[(_a : stdgo.GoInt)]?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L302"
            _swaps.value++;
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L303"
            return { _0 : _b, _1 : _a };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L305"
        return { _0 : _a, _1 : _b };
    }
overload inline extern function _order2Ordered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } return _order2Ordered__tp__11(_data, _a, _b, _swaps);
