package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function compare__tp__0(_s1:stdgo.Slice<stdgo.GoInt8>, _s2:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoInt8);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoInt8>, _s2:stdgo.Slice<stdgo.GoInt8>):stdgo.GoInt return compare__tp__0(_s1, _s2);
private function compare__tp__1(_s1:stdgo.Slice<stdgo.GoInt16>, _s2:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoInt16);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoInt16>, _s2:stdgo.Slice<stdgo.GoInt16>):stdgo.GoInt return compare__tp__1(_s1, _s2);
private function compare__tp__2(_s1:stdgo.Slice<stdgo.GoInt32>, _s2:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoInt32>, _s2:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt return compare__tp__2(_s1, _s2);
private function compare__tp__3(_s1:stdgo.Slice<stdgo.GoInt64>, _s2:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoInt64>, _s2:stdgo.Slice<stdgo.GoInt64>):stdgo.GoInt return compare__tp__3(_s1, _s2);
private function compare__tp__4(_s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoUInt8>, _s2:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt return compare__tp__4(_s1, _s2);
private function compare__tp__5(_s1:stdgo.Slice<stdgo.GoUInt16>, _s2:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt16);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoUInt16>, _s2:stdgo.Slice<stdgo.GoUInt16>):stdgo.GoInt return compare__tp__5(_s1, _s2);
private function compare__tp__6(_s1:stdgo.Slice<stdgo.GoUInt32>, _s2:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoUInt32>, _s2:stdgo.Slice<stdgo.GoUInt32>):stdgo.GoInt return compare__tp__6(_s1, _s2);
private function compare__tp__7(_s1:stdgo.Slice<stdgo.GoUInt64>, _s2:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoUInt64>, _s2:stdgo.Slice<stdgo.GoUInt64>):stdgo.GoInt return compare__tp__7(_s1, _s2);
private function compare__tp__8(_s1:stdgo.Slice<stdgo.GoUIntptr>, _s2:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoUIntptr);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoUIntptr>, _s2:stdgo.Slice<stdgo.GoUIntptr>):stdgo.GoInt return compare__tp__8(_s1, _s2);
private function compare__tp__9(_s1:stdgo.Slice<stdgo.GoFloat32>, _s2:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoFloat32);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoFloat32>, _s2:stdgo.Slice<stdgo.GoFloat32>):stdgo.GoInt return compare__tp__9(_s1, _s2);
private function compare__tp__10(_s1:stdgo.Slice<stdgo.GoFloat64>, _s2:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)] : stdgo.GoFloat64);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1, _v2) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoFloat64>, _s2:stdgo.Slice<stdgo.GoFloat64>):stdgo.GoInt return compare__tp__10(_s1, _s2);
private function compare__tp__11(_s1:stdgo.Slice<stdgo.GoString>, _s2:stdgo.Slice<stdgo.GoString>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L56"
        if (_s1 != null) for (_i => _v1 in _s1) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L57"
            if ((_i >= (_s2.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L58"
                return (1 : stdgo.GoInt);
            };
            var _v2 = (_s2[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L61"
            {
                var _c = (stdgo._internal.cmp.Cmp_compare.compare(_v1?.__copy__(), _v2?.__copy__()) : stdgo.GoInt);
                if (_c != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L62"
                    return _c;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L65"
        if (((_s1.length) < (_s2.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L66"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/slices.go#L68"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_s1:stdgo.Slice<stdgo.GoString>, _s2:stdgo.Slice<stdgo.GoString>):stdgo.GoInt return compare__tp__11(_s1, _s2);
