package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _medianOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__0(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__1(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__2(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__3(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__4(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__5(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__6(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__7(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__8(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__9(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__10(_data, _a, _b, _c, _swaps);
private function _medianOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _b, _c, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2ordered._order2Ordered(_data, _a, _b, _swaps) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L313"
        return _b;
    }
overload inline extern function _medianOrdered(_data:stdgo.Slice<stdgo.GoString>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt return _medianOrdered__tp__11(_data, _a, _b, _c, _swaps);
