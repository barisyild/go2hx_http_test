package stdgo._internal.math.bits;
function div64(_hi:stdgo.GoUInt64, _lo:stdgo.GoUInt64, _y:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } {
        var _quo = (0 : stdgo.GoUInt64), _rem = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L519"
        if (_y == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L520"
            throw ({
                final __t__ = stdgo._internal.math.bits.Bits__divideerror._divideError;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L522"
        if ((_y <= _hi : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L523"
            throw ({
                final __t__ = stdgo._internal.math.bits.Bits__overflowerror._overflowError;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L527"
        if (_hi == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L528"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } = { _0 : (_lo / _y : stdgo.GoUInt64), _1 : (_lo % _y : stdgo.GoUInt64) };
                _quo = __tmp__._0;
                _rem = __tmp__._1;
                __tmp__;
            };
        };
        var _s = @:assignType (stdgo._internal.math.bits.Bits_leadingzeros64.leadingZeros64(_y) : stdgo.GoUInt);
        _y = (_y << (_s) : stdgo.GoUInt64);
        {};
        var _yn1 = @:assignType (_y >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _yn0 = @:assignType (_y & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _un32 = @:assignType ((_hi << _s : stdgo.GoUInt64) | (_lo >> (((64u32 : stdgo.GoUInt) - _s : stdgo.GoUInt)) : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _un10 = @:assignType (_lo << _s : stdgo.GoUInt64);
        var _un1 = @:assignType (_un10 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _un0 = @:assignType (_un10 & (4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _q1 = @:assignType (_un32 / _yn1 : stdgo.GoUInt64);
        var _rhat = @:assignType (_un32 - (_q1 * _yn1 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L547"
        while (((_q1 >= (4294967296i64 : stdgo.GoUInt64) : Bool) || ((_q1 * _yn0 : stdgo.GoUInt64) > (((4294967296i64 : stdgo.GoUInt64) * _rhat : stdgo.GoUInt64) + _un1 : stdgo.GoUInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L548"
            _q1--;
            _rhat = (_rhat + (_yn1) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L550"
            if ((_rhat >= (4294967296i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L551"
                break;
            };
        };
        var _un21 = @:assignType (((_un32 * (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _un1 : stdgo.GoUInt64) - (_q1 * _y : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _q0 = @:assignType (_un21 / _yn1 : stdgo.GoUInt64);
        _rhat = (_un21 - (_q0 * _yn1 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L559"
        while (((_q0 >= (4294967296i64 : stdgo.GoUInt64) : Bool) || ((_q0 * _yn0 : stdgo.GoUInt64) > (((4294967296i64 : stdgo.GoUInt64) * _rhat : stdgo.GoUInt64) + _un0 : stdgo.GoUInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L560"
            _q0--;
            _rhat = (_rhat + (_yn1) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L562"
            if ((_rhat >= (4294967296i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L563"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits.go#L567"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoUInt64; } = { _0 : ((_q1 * (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _q0 : stdgo.GoUInt64), _1 : (((((_un21 * (4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + _un0 : stdgo.GoUInt64) - (_q0 * _y : stdgo.GoUInt64) : stdgo.GoUInt64)) >> _s : stdgo.GoUInt64) };
            _quo = __tmp__._0;
            _rem = __tmp__._1;
            __tmp__;
        };
    }
