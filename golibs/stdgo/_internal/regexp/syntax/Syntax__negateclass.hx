package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _negateClass(_r:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = @:assignType (0 : stdgo.GoInt32);
        var _w = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2037"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_r.length) : Bool)) {
                var __0 = @:assignType (_r[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (_r[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2039"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r[(_w : stdgo.GoInt)] = _nextLo;
                    _r[(_w + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _w = (_w + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
_nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        _r = (_r.__slice__(0, _w) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2047"
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = (_r.__append__(_nextLo, (1114111 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2052"
        return _r;
    }
