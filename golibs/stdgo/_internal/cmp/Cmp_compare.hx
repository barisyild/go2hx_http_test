package stdgo._internal.cmp;
private function compare__tp__0(_x:stdgo.GoInt8, _y:stdgo.GoInt8):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoInt8, _y:stdgo.GoInt8):stdgo.GoInt return compare__tp__0(_x, _y);
private function compare__tp__1(_x:stdgo.GoInt16, _y:stdgo.GoInt16):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoInt16, _y:stdgo.GoInt16):stdgo.GoInt return compare__tp__1(_x, _y);
private function compare__tp__2(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt return compare__tp__2(_x, _y);
private function compare__tp__3(_x:stdgo.GoInt64, _y:stdgo.GoInt64):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoInt64, _y:stdgo.GoInt64):stdgo.GoInt return compare__tp__3(_x, _y);
private function compare__tp__4(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt return compare__tp__4(_x, _y);
private function compare__tp__5(_x:stdgo.GoUInt16, _y:stdgo.GoUInt16):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoUInt16, _y:stdgo.GoUInt16):stdgo.GoInt return compare__tp__5(_x, _y);
private function compare__tp__6(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoInt return compare__tp__6(_x, _y);
private function compare__tp__7(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoInt return compare__tp__7(_x, _y);
private function compare__tp__8(_x:stdgo.GoUIntptr, _y:stdgo.GoUIntptr):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoUIntptr, _y:stdgo.GoUIntptr):stdgo.GoInt return compare__tp__8(_x, _y);
private function compare__tp__9(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoInt return compare__tp__9(_x, _y);
private function compare__tp__10(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoInt return compare__tp__10(_x, _y);
private function compare__tp__11(_x:stdgo.GoString, _y:stdgo.GoString):stdgo.GoInt {
        var _xNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_x?.__copy__()) : Bool);
        var _yNaN = (stdgo._internal.cmp.Cmp__isnan._isNaN(_y?.__copy__()) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L43"
        if ((_xNaN && _yNaN : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L44"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L46"
        if ((_xNaN || (_x < _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L47"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L49"
        if ((_yNaN || (_x > _y : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L50"
            return (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/cmp/cmp.go#L52"
        return (0 : stdgo.GoInt);
    }
overload inline extern function compare(_x:stdgo.GoString, _y:stdgo.GoString):stdgo.GoInt return compare__tp__11(_x, _y);
