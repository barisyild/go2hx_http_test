package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _parseGMT(_value:stdgo.GoString):stdgo.GoInt {
        _value = (_value.__slice__((3 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1463"
        if ((_value.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1464"
            return (3 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L1467"
        return ((3 : stdgo.GoInt) + stdgo._internal.time.Time__parsesignedoffset._parseSignedOffset(_value?.__copy__()) : stdgo.GoInt);
    }
