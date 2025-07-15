package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _siftDown(_data:stdgo._internal.sort.Sort_interface.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = @:assignType (_lo : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L22"
        while (true) {
            var _child = @:assignType (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L24"
            if ((_child >= _hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L25"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L27"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && _data.less((_first + _child : stdgo.GoInt), ((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L28"
                _child++;
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L30"
            if (!_data.less((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L31"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L33"
            _data.swap((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt));
            _root = _child;
        };
    }
