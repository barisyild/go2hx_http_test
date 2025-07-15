package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _appendInt(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt, _width:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _u = @:assignType (_x : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L401"
        if ((_x < (0 : stdgo.GoInt) : Bool)) {
            _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _u = (-_x : stdgo.GoUInt);
        };
        var _utod = @:assignType (function(_u:stdgo.GoUInt):stdgo.GoUInt8 {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L407"
            return ((48 : stdgo.GoUInt8) + (_u : stdgo.GoUInt8) : stdgo.GoUInt8);
        } : stdgo.GoUInt -> stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L408"
        if (((_width == (2 : stdgo.GoInt)) && (_u < (100u32 : stdgo.GoUInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L410"
            return (_b.__append__(_utod((_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod((_u % (10u32 : stdgo.GoUInt) : stdgo.GoUInt))) : stdgo.Slice<stdgo.GoUInt8>);
        } else if (((_width == (4 : stdgo.GoInt)) && (_u < (10000u32 : stdgo.GoUInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L412"
            return (_b.__append__(_utod((_u / (1000u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod(((_u / (100u32 : stdgo.GoUInt) : stdgo.GoUInt) % (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod(((_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt) % (10u32 : stdgo.GoUInt) : stdgo.GoUInt)), _utod((_u % (10u32 : stdgo.GoUInt) : stdgo.GoUInt))) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L417"
        if (_u == ((0u32 : stdgo.GoUInt))) {
            _n = (1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L420"
        {
            var _u2 = @:assignType (_u : stdgo.GoUInt);
            while ((_u2 > (0u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L421"
                _n++;
                _u2 = (_u2 / ((10u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L425"
        {
            var _pad = @:assignType (_width - _n : stdgo.GoInt);
            while ((_pad > (0 : stdgo.GoInt) : Bool)) {
                _b = (_b.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                _pad--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L430"
        if ((((_b.length) + _n : stdgo.GoInt) <= _b.capacity : Bool)) {
            _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _b = (_b.__append__(...((new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _i = @:assignType ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L438"
        while (((_u >= (10u32 : stdgo.GoUInt) : Bool) && (_i > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _q = @:assignType (_u / (10u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _b[(_i : stdgo.GoInt)] = _utod((_u - (_q * (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt));
            _u = _q;
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L442"
            _i--;
        };
        _b[(_i : stdgo.GoInt)] = _utod(_u);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L445"
        return _b;
    }
