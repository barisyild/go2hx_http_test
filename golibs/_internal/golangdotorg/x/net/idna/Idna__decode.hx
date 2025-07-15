package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _decode(_encoded:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L35"
        if (_encoded == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L36"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _pos = @:assignType ((1 : stdgo.GoInt) + stdgo._internal.strings.Strings_lastindex.lastIndex(_encoded?.__copy__(), ("-" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L39"
        if (_pos == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L40"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L42"
        if (_pos == ((_encoded.length))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L43"
            return { _0 : (_encoded.__slice__(0, ((_encoded.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _output = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (_encoded.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L46"
        if (_pos != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L47"
            if ((_encoded.__slice__(0, (_pos - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != null) for (__0 => _r in (_encoded.__slice__(0, (_pos - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)) {
                _output = (_output.__append__(_r) : stdgo.Slice<stdgo.GoInt32>);
            };
        };
        var __0 = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = @:assignType (128 : stdgo.GoInt32), __2 = @:assignType (72 : stdgo.GoInt32);
var _bias = __2, _n = __1, _i = __0;
        var _overflow = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L53"
        while ((_pos < (_encoded.length) : Bool)) {
            var __0 = @:assignType (_i : stdgo.GoInt32), __1 = @:assignType ((1 : stdgo.GoInt32) : stdgo.GoInt32);
var _w = __1, _oldI = __0;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L55"
            {
                var _k = @:assignType (36 : stdgo.GoInt32);
                while (true) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L56"
                    if (_pos == ((_encoded.length))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L57"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded.__copy__()) };
                    };
var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__decodedigit._decodeDigit(_encoded[(_pos : stdgo.GoInt)]), _digit:stdgo.GoInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L60"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L61"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded.__copy__()) };
                    };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L63"
                    _pos++;
{
                        var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__madd._madd(_i, _digit, _w);
                        _i = @:tmpset0 __tmp__._0;
                        _overflow = @:tmpset0 __tmp__._1;
                    };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L65"
                    if (_overflow) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L66"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded.__copy__()) };
                    };
var _t = @:assignType (_k - _bias : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L69"
                    if ((_k <= _bias : Bool)) {
                        _t = (1 : stdgo.GoInt32);
                    } else if ((_k >= (_bias + (26 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _t = (26 : stdgo.GoInt32);
                    };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L74"
                    if ((_digit < _t : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L75"
                        break;
                    };
{
                        var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__madd._madd((0 : stdgo.GoInt32), _w, ((36 : stdgo.GoInt32) - _t : stdgo.GoInt32));
                        _w = @:tmpset0 __tmp__._0;
                        _overflow = @:tmpset0 __tmp__._1;
                    };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L78"
                    if (_overflow) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L79"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded.__copy__()) };
                    };
                    _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L82"
            if (((_output.length) >= (1024 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L83"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded?.__copy__()) };
            };
            var _x = @:assignType (((_output.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
            _bias = _internal.golangdotorg.x.net.idna.Idna__adapt._adapt((_i - _oldI : stdgo.GoInt32), _x, _oldI == ((0 : stdgo.GoInt32)));
            _n = (_n + ((_i / _x : stdgo.GoInt32)) : stdgo.GoInt32);
            _i = (_i % (_x) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L89"
            if (((_n < (0 : stdgo.GoInt32) : Bool) || (_n > (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L90"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_encoded?.__copy__()) };
            };
            _output = (_output.__append__((0 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L93"
            (_output.__slice__((_i + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((_output.__slice__(_i) : stdgo.Slice<stdgo.GoInt32>));
            _output[(_i : stdgo.GoInt)] = _n;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L95"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L97"
        return { _0 : (_output : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
