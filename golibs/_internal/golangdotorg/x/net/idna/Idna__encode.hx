package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _encode(_prefix:stdgo.GoString, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _output = (new stdgo.Slice<stdgo.GoUInt8>((_prefix.length : stdgo.GoInt).toBasic(), (((_prefix.length) + (1 : stdgo.GoInt) : stdgo.GoInt) + ((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L107"
        _output.__copyTo__(_prefix);
        var __0 = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = @:assignType (128 : stdgo.GoInt32), __2 = @:assignType (72 : stdgo.GoInt32);
var _bias = __2, _n = __1, _delta = __0;
        var __0 = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32);
var _remaining = __1, _b = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L110"
        if (_s != null) for (__0 => _r in _s) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L111"
            if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L112"
                _b++;
                _output = (_output.__append__((_r : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L115"
                _remaining++;
            };
        };
        var _h = @:assignType (_b : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L119"
        if ((_b > (0 : stdgo.GoInt32) : Bool)) {
            _output = (_output.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _overflow = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L123"
        while (_remaining != ((0 : stdgo.GoInt32))) {
            var _m = @:assignType ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L125"
            if (_s != null) for (__1 => _r in _s) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L126"
                if (((_m > _r : Bool) && (_r >= _n : Bool) : Bool)) {
                    _m = _r;
                };
            };
            {
                var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__madd._madd(_delta, (_m - _n : stdgo.GoInt32), (_h + (1 : stdgo.GoInt32) : stdgo.GoInt32));
                _delta = @:tmpset0 __tmp__._0;
                _overflow = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L131"
            if (_overflow) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L132"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_s?.__copy__()) };
            };
            _n = _m;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L135"
            if (_s != null) for (__2 => _r in _s) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L136"
                if ((_r < _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L137"
                    _delta++;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L138"
                    if ((_delta < (0 : stdgo.GoInt32) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L139"
                        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _internal.golangdotorg.x.net.idna.Idna__punyerror._punyError(_s?.__copy__()) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L141"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L143"
                if ((_r > _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L144"
                    continue;
                };
                var _q = @:assignType (_delta : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L147"
                {
                    var _k = @:assignType (36 : stdgo.GoInt32);
                    while (true) {
                        var _t = @:assignType (_k - _bias : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L149"
                        if ((_k <= _bias : Bool)) {
                            _t = (1 : stdgo.GoInt32);
                        } else if ((_k >= (_bias + (26 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                            _t = (26 : stdgo.GoInt32);
                        };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L154"
                        if ((_q < _t : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L155"
                            break;
                        };
_output = (_output.__append__(_internal.golangdotorg.x.net.idna.Idna__encodedigit._encodeDigit((_t + (((_q - _t : stdgo.GoInt32)) % (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32) : stdgo.GoInt32))) : stdgo.Slice<stdgo.GoUInt8>);
_q = (((_q - _t : stdgo.GoInt32)) / (((36 : stdgo.GoInt32) - _t : stdgo.GoInt32)) : stdgo.GoInt32);
                        _k = (_k + ((36 : stdgo.GoInt32)) : stdgo.GoInt32);
                    };
                };
                _output = (_output.__append__(_internal.golangdotorg.x.net.idna.Idna__encodedigit._encodeDigit(_q)) : stdgo.Slice<stdgo.GoUInt8>);
                _bias = _internal.golangdotorg.x.net.idna.Idna__adapt._adapt(_delta, (_h + (1 : stdgo.GoInt32) : stdgo.GoInt32), _h == (_b));
                _delta = (0 : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L163"
                _h++;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L164"
                _remaining--;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L166"
            _delta++;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L167"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L169"
        return { _0 : (_output : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
