package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _fmtInt(_buf:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):stdgo.GoInt {
        var _w = @:assignType (_buf.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L745"
        if (_v == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L746"
            _w--;
            _buf[(_w : stdgo.GoInt)] = (48 : stdgo.GoUInt8);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/time/time.go#L749"
            while ((_v > (0i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/time/time.go#L750"
                _w--;
                _buf[(_w : stdgo.GoInt)] = (((_v % (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8) + (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
                _v = (_v / ((10i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/time/time.go#L755"
        return _w;
    }
