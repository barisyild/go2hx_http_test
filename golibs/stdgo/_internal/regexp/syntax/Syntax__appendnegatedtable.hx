package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = @:assignType (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1994"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r16 != null) for (__1 => _xr in (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r16) {
            var __0 = @:assignType (_xr.lo : stdgo.GoInt32), __1 = @:assignType (_xr.hi : stdgo.GoInt32), __2 = @:assignType (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1996"
            if (_stride == ((1 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1997"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2001"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2003"
            {
                var _c = @:assignType (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2004"
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
_nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2010"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r32 != null) for (__2 => _xr in (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r32) {
            var __0 = @:assignType (_xr.lo : stdgo.GoInt32), __1 = @:assignType (_xr.hi : stdgo.GoInt32), __2 = @:assignType (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2012"
            if (_stride == ((1 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2013"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2017"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2019"
            {
                var _c = @:assignType (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2020"
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
_nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2026"
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2029"
        return _r;
    }
