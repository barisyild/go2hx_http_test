package stdgo._internal.slices;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.math.bits.Bits;
private function _siftDownOrdered__tp__0(_data:stdgo.Slice<stdgo.GoInt8>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoInt8>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__0(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__1(_data:stdgo.Slice<stdgo.GoInt16>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoInt16>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__1(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__2(_data:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__2(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__3(_data:stdgo.Slice<stdgo.GoInt64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoInt64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__3(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__4(_data:stdgo.Slice<stdgo.GoUInt8>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoUInt8>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__4(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__5(_data:stdgo.Slice<stdgo.GoUInt16>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoUInt16>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__5(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__6(_data:stdgo.Slice<stdgo.GoUInt32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoUInt32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__6(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__7(_data:stdgo.Slice<stdgo.GoUInt64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoUInt64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__7(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__8(_data:stdgo.Slice<stdgo.GoUIntptr>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoUIntptr>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__8(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__9(_data:stdgo.Slice<stdgo.GoFloat32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoFloat32>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__9(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__10(_data:stdgo.Slice<stdgo.GoFloat64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)], _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)], _data[(_first + _child : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoFloat64>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__10(_data, _lo, _hi, _first);
private function _siftDownOrdered__tp__11(_data:stdgo.Slice<stdgo.GoString>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L24"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L26"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L27"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L29"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && (stdgo._internal.cmp.Cmp_less.less(_data[(_first + _child : stdgo.GoInt)]?.__copy__(), _data[((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L30"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L32"
            if (!(stdgo._internal.cmp.Cmp_less.less(_data[(_first + _root : stdgo.GoInt)]?.__copy__(), _data[(_first + _child : stdgo.GoInt)]?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/slices/zsortordered.go#L33"
                return;
            };
            {
                final __tmp__0 = _data[(_first + _child : stdgo.GoInt)]?.__copy__();
                final __tmp__1 = _data[(_first + _root : stdgo.GoInt)]?.__copy__();
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
overload inline extern function _siftDownOrdered(_data:stdgo.Slice<stdgo.GoString>, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void _siftDownOrdered__tp__11(_data, _lo, _hi, _first);
