package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _quote(_s:stdgo.GoString):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), ((_s.length) + (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _buf[(0 : stdgo.GoInt)] = (34 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L852"
        if (_s != null) for (_i => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/time/format.go#L853"
            if (((_c >= (128 : stdgo.GoInt32) : Bool) || (_c < (32 : stdgo.GoInt32) : Bool) : Bool)) {
                var _width:stdgo.GoInt = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L861"
                if (_c == ((65533 : stdgo.GoInt32))) {
                    _width = (1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/time/format.go#L863"
                    if ((((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_s.length) : Bool) && ((_s.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ((65533 : stdgo.GoInt32) : stdgo.GoString)) : Bool)) {
                        _width = (3 : stdgo.GoInt);
                    };
                } else {
                    _width = ((_c : stdgo.GoString).length);
                };
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L869"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < _width : Bool)) {
                        _buf = (_buf.__append__(...((("\\x" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
_buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(_i + _j : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
_buf = (_buf.__append__(("0123456789abcdef" : stdgo.GoString)[((_s[(_i + _j : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                        _j++;
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/time/format.go#L875"
                if (((_c == (34 : stdgo.GoInt32)) || (_c == (92 : stdgo.GoInt32)) : Bool)) {
                    _buf = (_buf.__append__((92 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _buf = (_buf.__append__(...((_c : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        _buf = (_buf.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/time/format.go#L882"
        return (_buf : stdgo.GoString)?.__copy__();
    }
