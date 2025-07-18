package stdgo._internal.strconv;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.unicode.utf8.Utf8;
function unquoteChar(_s:stdgo.GoString, _quote:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } {
        var _value = (0 : stdgo.GoInt32), _multibyte = false, _tail = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L264"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L266"
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L268"
        {
            var _c = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c == _quote) && (((_quote == (39 : stdgo.GoUInt8)) || (_quote == (34 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L271"
                return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
            } else if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L274"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : _r, _1 : true, _2 : (_s.__slice__(_size) : stdgo.GoString)?.__copy__(), _3 : (null : stdgo.Error) };
                    _value = __tmp__._0;
                    _multibyte = __tmp__._1;
                    _tail = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            } else if (_c != ((92 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L276"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; var _2 : stdgo.GoString; var _3 : stdgo.Error; } = { _0 : (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32), _1 : false, _2 : (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _3 : (null : stdgo.Error) };
                    _value = __tmp__._0;
                    _multibyte = __tmp__._1;
                    _tail = __tmp__._2;
                    _err = __tmp__._3;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L280"
        if (((_s.length) <= (1 : stdgo.GoInt) : Bool)) {
            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L282"
            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
        };
        var _c = @:assignType (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L287"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _c;
                    if (__value__ == ((97 : stdgo.GoUInt8))) {
                        _value = (7 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                        _value = (8 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                        _value = (12 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                        _value = (10 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((114 : stdgo.GoUInt8))) {
                        _value = (13 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                        _value = (9 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                        _value = (11 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((120 : stdgo.GoUInt8)) || __value__ == ((117 : stdgo.GoUInt8)) || __value__ == ((85 : stdgo.GoUInt8))) {
                        var _n = @:assignType (0 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L304"
                        {
                            final __value__ = _c;
                            if (__value__ == ((120 : stdgo.GoUInt8))) {
                                _n = (2 : stdgo.GoInt);
                            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                                _n = (4 : stdgo.GoInt);
                            } else if (__value__ == ((85 : stdgo.GoUInt8))) {
                                _n = (8 : stdgo.GoInt);
                            };
                        };
                        var _v:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L313"
                        if (((_s.length) < _n : Bool)) {
                            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L315"
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L317"
                        {
                            var _j = @:assignType (0 : stdgo.GoInt);
                            while ((_j < _n : Bool)) {
                                var __tmp__ = stdgo._internal.strconv.Strconv__unhex._unhex(_s[(_j : stdgo.GoInt)]), _x:stdgo.GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L319"
                                if (!_ok) {
                                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                                    //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L321"
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
_v = ((_v << (4i64 : stdgo.GoUInt64) : stdgo.GoInt32) | _x : stdgo.GoInt32);
                                _j++;
                            };
                        };
                        _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L326"
                        if (_c == ((120 : stdgo.GoUInt8))) {
                            _value = _v;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L329"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L331"
                        if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_v)) {
                            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L333"
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        _multibyte = true;
                        break;
                    } else if (__value__ == ((48 : stdgo.GoUInt8)) || __value__ == ((49 : stdgo.GoUInt8)) || __value__ == ((50 : stdgo.GoUInt8)) || __value__ == ((51 : stdgo.GoUInt8)) || __value__ == ((52 : stdgo.GoUInt8)) || __value__ == ((53 : stdgo.GoUInt8)) || __value__ == ((54 : stdgo.GoUInt8)) || __value__ == ((55 : stdgo.GoUInt8))) {
                        var _v = @:assignType ((_c : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L339"
                        if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L341"
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L343"
                        {
                            var _j = @:assignType (0 : stdgo.GoInt);
                            while ((_j < (2 : stdgo.GoInt) : Bool)) {
                                var _x = @:assignType ((_s[(_j : stdgo.GoInt)] : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L345"
                                if (((_x < (0 : stdgo.GoInt32) : Bool) || (_x > (7 : stdgo.GoInt32) : Bool) : Bool)) {
                                    _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                                    //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L347"
                                    return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                                };
_v = (((_v << (3i64 : stdgo.GoUInt64) : stdgo.GoInt32)) | _x : stdgo.GoInt32);
                                _j++;
                            };
                        };
                        _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L352"
                        if ((_v > (255 : stdgo.GoInt32) : Bool)) {
                            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L354"
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = _v;
                        break;
                    } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                        _value = (92 : stdgo.GoInt32);
                        break;
                    } else if (__value__ == ((39 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L360"
                        if (_c != (_quote)) {
                            _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                            //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L362"
                            return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                        };
                        _value = (_c : stdgo.GoInt32);
                        break;
                    } else {
                        _err = stdgo._internal.strconv.Strconv_errsyntax.errSyntax;
                        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L367"
                        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
                    };
                };
                break;
            };
        };
        _tail = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/strconv/quote.go#L370"
        return { _0 : _value, _1 : _multibyte, _2 : _tail, _3 : _err };
    }
