package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L180"
        if (_chars == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L182"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L184"
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _rc = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L186"
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L189"
            if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _rc) >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L190"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L192"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L194"
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L195"
            {
                var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L196"
                    {
                        var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L197"
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L198"
                                return _i;
                            };
                            _i--;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L201"
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L204"
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _rc = @:assignType (_chars[(0 : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L206"
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L209"
            {
                var _i = @:assignType (_s.length : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L212"
                    if (_rc == (_r)) {
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L213"
                        return _i;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L216"
            return (-1 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L218"
        {
            var _i = @:assignType (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L221"
                if ((stdgo._internal.strings.Strings_indexrune.indexRune(_chars?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L222"
                    return _i;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L225"
        return (-1 : stdgo.GoInt);
    }
