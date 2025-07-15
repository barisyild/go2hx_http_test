package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n = @:assignType (_substr.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L82"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L84"
            return (_s.length);
        } else if (_n == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L86"
            return stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L88"
            if (_substr == (_s)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L89"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L91"
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L93"
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstrrev.hashStrRev(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last = @:assignType ((_s.length) - _n : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L99"
        {
            var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= _last : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L102"
        if (((_h == _hashss) && ((_s.__slice__(_last) : stdgo.GoString) == _substr) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L103"
            return _last;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L105"
        {
            var _i = @:assignType (_last - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h - ((_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L109"
                if (((_h == _hashss) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L110"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L113"
        return (-1 : stdgo.GoInt);
    }
