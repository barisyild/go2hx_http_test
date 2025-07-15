package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendNegatedClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = @:assignType (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1953"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                var __0 = @:assignType (_x[(_i : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (_x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
var _hi = __1, _lo = __0;
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1955"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
_nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1960"
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1963"
        return _r;
    }
