package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function _partialInsertionSort(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = @:assignType (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L201"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L202"
                while (((_i < _b : Bool) && !_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L203"
                    _i++;
                };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L206"
                if (_i == (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L207"
                    return true;
                };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L210"
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L211"
                    return false;
                };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L214"
                _data.swap(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L217"
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L218"
                    {
                        var _j = @:assignType (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j >= (1 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L219"
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L220"
                                break;
                            };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L222"
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j--;
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L226"
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L227"
                    {
                        var _j = @:assignType (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _b : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L228"
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L229"
                                break;
                            };
//"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L231"
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                            _j++;
                        };
                    };
                };
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/sort/zsortinterface.go#L235"
        return false;
    }
