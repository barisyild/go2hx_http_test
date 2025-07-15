package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendTable(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Slice<stdgo.GoInt32> {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1968"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r16 != null) for (__1 => _xr in (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r16) {
            var __0 = @:assignType (_xr.lo : stdgo.GoInt32), __1 = @:assignType (_xr.hi : stdgo.GoInt32), __2 = @:assignType (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1970"
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1972"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1974"
            {
                var _c = @:assignType (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1978"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r32 != null) for (__2 => _xr in (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r32) {
            var __0 = @:assignType (_xr.lo : stdgo.GoInt32), __1 = @:assignType (_xr.hi : stdgo.GoInt32), __2 = @:assignType (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1980"
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1982"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1984"
            {
                var _c = @:assignType (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1988"
        return _r;
    }
