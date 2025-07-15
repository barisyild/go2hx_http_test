package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt {
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_a.length : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L555"
        while ((_i < _j : Bool)) {
            var _h = @:assignType ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L558"
            if ((_a[(_h : stdgo.GoInt)] <= _x : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L564"
        return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
