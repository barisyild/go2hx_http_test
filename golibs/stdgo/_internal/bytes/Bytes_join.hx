package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function join(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L529"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L530"
            return (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L532"
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L534"
            return ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_s[(0 : stdgo.GoInt)] : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L538"
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L539"
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L540"
                throw new stdgo.AnyInterface(("bytes: Join output length overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            _n = (_n + (((_sep.length) * (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L544"
        if (_s != null) for (__0 => _v in _s) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L545"
            if (((_v.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L546"
                throw new stdgo.AnyInterface(("bytes: Join output length overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            _n = (_n + ((_v.length)) : stdgo.GoInt);
        };
        var _b = stdgo._internal.internal.bytealg.Bytealg_makenozero.makeNoZero(_n);
        var _bp = @:assignType (_b.__copyTo__(_s[(0 : stdgo.GoInt)]) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L553"
        if ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) != null) for (__1 => _v in (_s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            _bp = (_bp + ((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_sep)) : stdgo.GoInt);
            _bp = (_bp + ((_b.__slice__(_bp) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_v)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L557"
        return _b;
    }
