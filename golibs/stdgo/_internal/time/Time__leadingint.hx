package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
private function _leadingInt__tp__0(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _x = (0 : stdgo.GoUInt64), _rem = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1524"
        while ((_i < (_s.length) : Bool)) {
            var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1526"
            if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1527"
                break;
            };
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1529"
            if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1531"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem, _2 : stdgo._internal.time.Time__errleadingint._errLeadingInt };
                    _x = __tmp__._0;
                    _rem = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
_x = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1534"
            if ((_x > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1536"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem, _2 : stdgo._internal.time.Time__errleadingint._errLeadingInt };
                    _x = __tmp__._0;
                    _rem = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1539"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _x, _1 : (_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _x = __tmp__._0;
            _rem = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
overload inline extern function _leadingInt(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return _leadingInt__tp__0(_s);
private function _leadingInt__tp__1(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _x = (0 : stdgo.GoUInt64), _rem = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1524"
        while ((_i < (_s.length) : Bool)) {
            var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1526"
            if (((_c < (48 : stdgo.GoUInt8) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1527"
                break;
            };
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1529"
            if ((_x > (922337203685477580i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1531"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem.__copy__(), _2 : stdgo._internal.time.Time__errleadingint._errLeadingInt };
                    _x = __tmp__._0;
                    _rem = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
_x = (((_x * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) + (_c : stdgo.GoUInt64) : stdgo.GoUInt64) - (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/time/format.go#L1534"
            if ((_x > (-9223372036854775808i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1536"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _rem.__copy__(), _2 : stdgo._internal.time.Time__errleadingint._errLeadingInt };
                    _x = __tmp__._0;
                    _rem = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1539"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _x, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : (null : stdgo.Error) };
            _x = __tmp__._0;
            _rem = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
overload inline extern function _leadingInt(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return _leadingInt__tp__1(_s);
