package stdgo._internal.unicode.utf8;
function runeCountInString(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        var _ns = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L439"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _ns : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L441"
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L443"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L444"
                    {
                        _n++;
                        continue;
                    };
                };
var _x = @:assignType (stdgo._internal.unicode.utf8.Utf8__first._first[(_c : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L447"
                if (_x == ((241 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L448"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L449"
                    {
                        _n++;
                        continue;
                    };
                };
var _size = @:assignType ((_x & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L452"
                if (((_i + _size : stdgo.GoInt) > _ns : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L453"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L454"
                    {
                        _n++;
                        continue;
                    };
                };
var _accept = @:assignType (stdgo._internal.unicode.utf8.Utf8__acceptranges._acceptRanges[((_x >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo._internal.unicode.utf8.Utf8_t_acceptrange.T_acceptRange);
//"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L457"
                {
                    var _c = @:assignType (_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_c < _accept._lo : Bool) || (_accept._hi < _c : Bool) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else if (_size == ((2 : stdgo.GoInt))) {} else {
                        var _c = @:assignType (_s[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                        if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                            _size = (1 : stdgo.GoInt);
                        } else if (_size == ((3 : stdgo.GoInt))) {} else {
                            var _c = @:assignType (_s[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                            if (((_c < (128 : stdgo.GoUInt8) : Bool) || ((191 : stdgo.GoUInt8) < _c : Bool) : Bool)) {
                                _size = (1 : stdgo.GoInt);
                            };
                        };
                    };
                };
_i = (_i + (_size) : stdgo.GoInt);
                _n++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf8/utf8.go#L468"
        return _n;
    }
