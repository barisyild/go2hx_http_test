package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _symMerge(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L382"
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = @:assignType (_m : stdgo.GoInt);
            var _j = @:assignType (_b : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L388"
            while ((_i < _j : Bool)) {
                var _h = @:assignType ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L390"
                if (_data.less(_h, _a)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L397"
            {
                var _k = @:assignType (_a : stdgo.GoInt);
                while ((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L398"
                    _data.swap(_k, (_k + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _k++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L400"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L406"
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = @:assignType (_a : stdgo.GoInt);
            var _j = @:assignType (_m : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L412"
            while ((_i < _j : Bool)) {
                var _h = @:assignType ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L414"
                if (!_data.less(_m, _h)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L421"
            {
                var _k = @:assignType (_m : stdgo.GoInt);
                while ((_k > _i : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L422"
                    _data.swap(_k, (_k - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _k--;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L424"
            return;
        };
        var _mid = @:assignType ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = @:assignType (_mid + _m : stdgo.GoInt);
        var _start:stdgo.GoInt = (0 : stdgo.GoInt), _r:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L430"
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L439"
        while ((_start < _r : Bool)) {
            var _c = @:assignType ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L441"
            if (!_data.less((_p - _c : stdgo.GoInt), _c)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = @:assignType (_n - _start : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L449"
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L450"
            stdgo._internal.sort.Sort__rotate._rotate(_data, _start, _m, _end);
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L452"
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L453"
            stdgo._internal.sort.Sort__symmerge._symMerge(_data, _a, _start, _mid);
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L455"
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L456"
            stdgo._internal.sort.Sort__symmerge._symMerge(_data, _mid, _end, _b);
        };
    }
