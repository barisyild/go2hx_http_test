package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
private function _appendString__tp__0(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _escapeHTML:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L966"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_src.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L967"
                {
                    var _b = @:assignType (_src[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L968"
                        if ((stdgo._internal.encoding.json.Json__htmlsafeset._htmlSafeSet[(_b : stdgo.GoInt)] || ((!_escapeHTML && stdgo._internal.encoding.json.Json__safeset._safeSet[(_b : stdgo.GoInt)] : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L969"
                            _i++;
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L970"
                            continue;
                        };
                        _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L973"
                        {
                            final __value__ = _b;
                            if (__value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), _b) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (110 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (114 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((9 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (116 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], stdgo._internal.encoding.json.Json__hex._hex[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L990"
                        _i++;
                        _start = _i;
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L992"
                        continue;
                    };
                };
                var _n = @:assignType ((_src.length) - _i : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L999"
                if ((_n > (4 : stdgo.GoInt) : Bool)) {
                    _n = (4 : stdgo.GoInt);
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((_src.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1003"
                if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _dst = (_dst.__append__(...((("\\ufffd" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1008"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1017"
                if (((_c == (8232 : stdgo.GoInt32)) || (_c == (8233 : stdgo.GoInt32)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_c & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1022"
                    continue;
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        _dst = (_dst.__append__(...((_src.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _dst = (_dst.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1028"
        return _dst;
    }
overload inline extern function _appendString(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _escapeHTML:Bool):stdgo.Slice<stdgo.GoUInt8> return _appendString__tp__0(_dst, _src, _escapeHTML);
private function _appendString__tp__1(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _escapeHTML:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L966"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_src.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L967"
                {
                    var _b = @:assignType (_src[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_b < (128 : stdgo.GoUInt8) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L968"
                        if ((stdgo._internal.encoding.json.Json__htmlsafeset._htmlSafeSet[(_b : stdgo.GoInt)] || ((!_escapeHTML && stdgo._internal.encoding.json.Json__safeset._safeSet[(_b : stdgo.GoInt)] : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L969"
                            _i++;
                            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L970"
                            continue;
                        };
                        _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L973"
                        {
                            final __value__ = _b;
                            if (__value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), _b) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (110 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((13 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (114 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else if (__value__ == ((9 : stdgo.GoUInt8))) {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (116 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                            } else {
                                _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], stdgo._internal.encoding.json.Json__hex._hex[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L990"
                        _i++;
                        _start = _i;
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L992"
                        continue;
                    };
                };
                var _n = @:assignType ((_src.length) - _i : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L999"
                if ((_n > (4 : stdgo.GoInt) : Bool)) {
                    _n = (4 : stdgo.GoInt);
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_src.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1003"
                if (((_c == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _dst = (_dst.__append__(...((("\\ufffd" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1008"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1017"
                if (((_c == (8232 : stdgo.GoInt32)) || (_c == (8233 : stdgo.GoInt32)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_c & (15 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _i = (_i + (_size) : stdgo.GoInt);
                    _start = _i;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1022"
                    continue;
                };
                _i = (_i + (_size) : stdgo.GoInt);
            };
        };
        _dst = (_dst.__append__(...((_src.__slice__(_start) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _dst = (_dst.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L1028"
        return _dst;
    }
overload inline extern function _appendString(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.GoString, _escapeHTML:Bool):stdgo.Slice<stdgo.GoUInt8> return _appendString__tp__1(_dst, _src, _escapeHTML);
