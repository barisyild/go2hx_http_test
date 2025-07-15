package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _fmtFrac(_buf:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64, _prec:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } {
        var _nw = (0 : stdgo.GoInt), _nv = (0 : stdgo.GoUInt64);
        var _w = @:assignType (_buf.length : stdgo.GoInt);
        var _print = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L725"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _prec : Bool)) {
                var _digit = @:assignType (_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
_print = (_print || (_digit != (0i64 : stdgo.GoUInt64)) : Bool);
//"file:///Users/o/.go/go1.21.3/src/time/time.go#L728"
                if (_print) {
                    //"file:///Users/o/.go/go1.21.3/src/time/time.go#L729"
                    _w--;
                    _buf[(_w : stdgo.GoInt)] = ((_digit : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                };
_v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L734"
        if (_print) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L735"
            _w--;
            _buf[(_w : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L738"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoUInt64; } = { _0 : _w, _1 : _v };
            _nw = __tmp__._0;
            _nv = __tmp__._1;
            __tmp__;
        };
    }
