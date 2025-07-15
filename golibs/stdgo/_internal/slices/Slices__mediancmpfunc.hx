package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _medianCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt {
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2cmpfunc._order2CmpFunc(_data, _a, _b, _swaps, _cmp) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2cmpfunc._order2CmpFunc(_data, _b, _c, _swaps, _cmp) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _b = @:tmpset0 __tmp__._0;
            _c = @:tmpset0 __tmp__._1;
        };
        {
            var __tmp__ = (stdgo._internal.slices.Slices__order2cmpfunc._order2CmpFunc(_data, _a, _b, _swaps, _cmp) : { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
            _a = @:tmpset0 __tmp__._0;
            _b = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L311"
        return _b;
    }
overload inline extern function _medianCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>, _cmp:(E, E) -> stdgo.GoInt):stdgo.GoInt return _medianCmpFunc__tp__0(_data, _a, _b, _c, _swaps, _cmp);
