package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _siftDownCmpFunc__tp__0<E>(_data:stdgo.Slice<E>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L22"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L24"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L25"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L27"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && ((_cmp(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L28"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L30"
            if (!((_cmp(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) < (0 : stdgo.GoInt) : Bool))) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortanyfunc.go#L31"
                return;
            };
            {
                final __tmp__0 = _data[(_first + _child : stdgo.GoInt)];
                final __tmp__1 = _data[(_first + _root : stdgo.GoInt)];
                final __tmp__2 = _data;
                final __tmp__3 = (_first + _root : stdgo.GoInt);
                final __tmp__4 = _data;
                final __tmp__5 = (_first + _child : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            _root = _child;
        };
    }
overload inline extern function _siftDownCmpFunc<E>(_data:stdgo.Slice<E>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt, _cmp:(E, E) -> stdgo.GoInt):Void _siftDownCmpFunc__tp__0(_data, _lo, _hi, _first, _cmp);
