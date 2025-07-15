package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n = @:assignType (_substr.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1196"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1198"
            return (0 : stdgo.GoInt);
        } else if (_n == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1200"
            return stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1202"
            if (_substr == (_s)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1203"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1205"
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1207"
            return (-1 : stdgo.GoInt);
        } else if ((_n <= stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1210"
            if (((_s.length) <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1211"
                return stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString(_s?.__copy__(), _substr?.__copy__());
            };
            var _c0 = @:assignType (_substr[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = @:assignType (_substr[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _i = @:assignType (0 : stdgo.GoInt);
            var _t = @:assignType (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            var _fails = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1218"
            while ((_i < _t : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1219"
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o = @:assignType (stdgo._internal.strings.Strings_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1223"
                    if ((_o < (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1224"
                        return (-1 : stdgo.GoInt);
                    };
                    _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1228"
                if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1229"
                    return _i;
                };
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1231"
                _fails++;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1232"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1234"
                if ((_fails > stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_i) : Bool)) {
                    var _r = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexstring.indexString((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1236"
                    if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1237"
                        return (_r + _i : stdgo.GoInt);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1239"
                    return (-1 : stdgo.GoInt);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1242"
            return (-1 : stdgo.GoInt);
        };
        var _c0 = @:assignType (_substr[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _c1 = @:assignType (_substr[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _i = @:assignType (0 : stdgo.GoInt);
        var _t = @:assignType (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _fails = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1249"
        while ((_i < _t : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1250"
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o = @:assignType (stdgo._internal.strings.Strings_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1252"
                if ((_o < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1253"
                    return (-1 : stdgo.GoInt);
                };
                _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1257"
            if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1258"
                return _i;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1260"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1261"
            _fails++;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1262"
            if (((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_i < _t : Bool) : Bool)) {
                var _j = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexrabinkarp.indexRabinKarp((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1265"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1266"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1268"
                return (_i + _j : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1271"
        return (-1 : stdgo.GoInt);
    }
