package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function isSorted__tp__0(_x:stdgo.Slice<stdgo.GoInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoInt8>):Bool return isSorted__tp__0(_x);
private function isSorted__tp__1(_x:stdgo.Slice<stdgo.GoInt16>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoInt16>):Bool return isSorted__tp__1(_x);
private function isSorted__tp__2(_x:stdgo.Slice<stdgo.GoInt32>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoInt32>):Bool return isSorted__tp__2(_x);
private function isSorted__tp__3(_x:stdgo.Slice<stdgo.GoInt64>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoInt64>):Bool return isSorted__tp__3(_x);
private function isSorted__tp__4(_x:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoUInt8>):Bool return isSorted__tp__4(_x);
private function isSorted__tp__5(_x:stdgo.Slice<stdgo.GoUInt16>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoUInt16>):Bool return isSorted__tp__5(_x);
private function isSorted__tp__6(_x:stdgo.Slice<stdgo.GoUInt32>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoUInt32>):Bool return isSorted__tp__6(_x);
private function isSorted__tp__7(_x:stdgo.Slice<stdgo.GoUInt64>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoUInt64>):Bool return isSorted__tp__7(_x);
private function isSorted__tp__8(_x:stdgo.Slice<stdgo.GoUIntptr>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoUIntptr>):Bool return isSorted__tp__8(_x);
private function isSorted__tp__9(_x:stdgo.Slice<stdgo.GoFloat32>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoFloat32>):Bool return isSorted__tp__9(_x);
private function isSorted__tp__10(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)], _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool return isSorted__tp__10(_x);
private function isSorted__tp__11(_x:stdgo.Slice<stdgo.GoString>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L39"
        {
            var _i = ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L40"
                if ((stdgo._internal.cmp.Cmp_less.less(_x[(_i : stdgo.GoInt)].__copy__(), _x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].__copy__()) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L41"
                    return false;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/sort.go#L44"
        return true;
    }
overload inline extern function isSorted(_x:stdgo.Slice<stdgo.GoString>):Bool return isSorted__tp__11(_x);
