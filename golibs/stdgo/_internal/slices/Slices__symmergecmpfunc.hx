package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _symMergeCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L382"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_m : stdgo.GoInt);
            var _j = (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L388"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L390"
                if ((_cmp(_data[(_h : stdgo.GoInt)], _data[(_a : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L397"
            {
                var _k = (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _data[(_k + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k + (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L400"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L406"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = (_a : stdgo.GoInt);
            var _j = (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L412"
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L414"
                if (!((_cmp(_data[(_m : stdgo.GoInt)], _data[(_h : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L421"
            {
                var _k = (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    {
                        final __tmp__0 = _data[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        final __tmp__1 = _data[(_k : stdgo.GoInt)];
                        final __tmp__2 = _data;
                        final __tmp__3 = (_k : stdgo.GoInt);
                        final __tmp__4 = _data;
                        final __tmp__5 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L424"
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L430"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L439"
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L441"
            if (!((_cmp(_data[(_p - _c : stdgo.GoInt)], _data[(_c : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L449"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L450"
            stdgo._internal.slices.Slices__rotatecmpfunc._rotateCmpFunc(_data, _start, _m, _end, _cmp);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L452"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L453"
            stdgo._internal.slices.Slices__symmergecmpfunc._symMergeCmpFunc(_data, _a, _start, _mid, _cmp);
        };
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L455"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L456"
            stdgo._internal.slices.Slices__symmergecmpfunc._symMergeCmpFunc(_data, _mid, _end, _b, _cmp);
        };
    }
overload inline extern function _symMergeCmpFunc<E>(_data:stdgo.Slice<E>, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _symMergeCmpFunc__tp__0(_data, _a, _m, _b, _cmp);
