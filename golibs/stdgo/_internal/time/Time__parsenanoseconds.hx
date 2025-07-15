package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
private function _parseNanoseconds__tp__0(_value:stdgo.Slice<stdgo.GoUInt8>, _nbytes:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _ns = (0 : stdgo.GoInt), _rangeErrString = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1495"
        if (!stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)])) {
            _err = stdgo._internal.time.Time__errbad._errBad;
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1497"
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1499"
        if ((_nbytes > (10 : stdgo.GoInt) : Bool)) {
            _value = (_value.__slice__(0, (10 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _nbytes = (10 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1503"
        {
            {
                var __tmp__ = (stdgo._internal.time.Time__atoi._atoi((_value.__slice__((1 : stdgo.GoInt), _nbytes) : stdgo.Slice<stdgo.GoUInt8>)) : { var _0 : stdgo.GoInt; var _1 : stdgo.Error; });
                _ns = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1504"
                return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1506"
        if ((_ns < (0 : stdgo.GoInt) : Bool)) {
            _rangeErrString = ("fractional second" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1508"
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        var _scaleDigits = @:assignType ((10 : stdgo.GoInt) - _nbytes : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1513"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _scaleDigits : Bool)) {
                _ns = (_ns * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1516"
        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
    }
overload inline extern function _parseNanoseconds(_value:stdgo.Slice<stdgo.GoUInt8>, _nbytes:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return _parseNanoseconds__tp__0(_value, _nbytes);
private function _parseNanoseconds__tp__1(_value:stdgo.GoString, _nbytes:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _ns = (0 : stdgo.GoInt), _rangeErrString = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1495"
        if (!stdgo._internal.time.Time__commaorperiod._commaOrPeriod(_value[(0 : stdgo.GoInt)])) {
            _err = stdgo._internal.time.Time__errbad._errBad;
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1497"
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1499"
        if ((_nbytes > (10 : stdgo.GoInt) : Bool)) {
            _value = (_value.__slice__(0, (10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _nbytes = (10 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1503"
        {
            {
                var __tmp__ = (stdgo._internal.time.Time__atoi._atoi((_value.__slice__((1 : stdgo.GoInt), _nbytes) : stdgo.GoString)?.__copy__()) : { var _0 : stdgo.GoInt; var _1 : stdgo.Error; });
                _ns = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1504"
                return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1506"
        if ((_ns < (0 : stdgo.GoInt) : Bool)) {
            _rangeErrString = ("fractional second" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1508"
            return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
        };
        var _scaleDigits = @:assignType ((10 : stdgo.GoInt) - _nbytes : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1513"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _scaleDigits : Bool)) {
                _ns = (_ns * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1516"
        return { _0 : _ns, _1 : _rangeErrString, _2 : _err };
    }
overload inline extern function _parseNanoseconds(_value:stdgo.GoString, _nbytes:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return _parseNanoseconds__tp__1(_value, _nbytes);
