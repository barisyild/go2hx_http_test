package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendRange(_r:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt32, _hi:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        var _n = @:assignType (_r.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1872"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i <= (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1873"
                if ((_n >= _i : Bool)) {
                    var __0 = @:assignType (_r[(_n - _i : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (_r[((_n - _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _rhi = __1, _rlo = __0;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1875"
                    if (((_lo <= (_rhi + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool) && (_rlo <= (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1876"
                        if ((_lo < _rlo : Bool)) {
                            _r[(_n - _i : stdgo.GoInt)] = _lo;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1879"
                        if ((_hi > _rhi : Bool)) {
                            _r[((_n - _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = _hi;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1882"
                        return _r;
                    };
                };
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1887"
        return (_r.__append__(_lo, _hi) : stdgo.Slice<stdgo.GoInt32>);
    }
