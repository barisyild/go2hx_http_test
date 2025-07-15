package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function max__tp__0(_x:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt8 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoInt8);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt8 return max__tp__0(_x);
private function max__tp__1(_x:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt16 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoInt16);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt16 return max__tp__1(_x);
private function max__tp__2(_x:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt32 return max__tp__2(_x);
private function max__tp__3(_x:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt64 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt64 return max__tp__3(_x);
private function max__tp__4(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt8 return max__tp__4(_x);
private function max__tp__5(_x:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoUInt16 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoUInt16 return max__tp__5(_x);
private function max__tp__6(_x:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoUInt32 return max__tp__6(_x);
private function max__tp__7(_x:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoUInt64 return max__tp__7(_x);
private function max__tp__8(_x:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoUIntptr {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoUIntptr);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoUIntptr return max__tp__8(_x);
private function max__tp__9(_x:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoFloat32 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoFloat32);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoFloat32 return max__tp__9(_x);
private function max__tp__10(_x:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoFloat64 {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)] : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m;
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoFloat64 return max__tp__10(_x);
private function max__tp__11(_x:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L92"
        if (((_x.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L93"
            throw stdgo.Go.toInterface(("slices.Max: empty list" : stdgo.GoString));
        };
        var _m = (_x[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L96"
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _m = stdgo.Go.max(_m, _x[(_i : stdgo.GoInt)]).__copy__();
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L99"
        return _m?.__copy__();
    }
overload inline extern function max(_x:stdgo.Slice<stdgo.GoString>):stdgo.GoString return max__tp__11(_x);
