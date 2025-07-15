package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _appendFoldedRange(_r:stdgo.Slice<stdgo.GoInt32>, _lo:stdgo.GoInt32, _hi:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1901"
        if (((_lo <= (65 : stdgo.GoInt32) : Bool) && (_hi >= (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1903"
            return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1905"
        if (((_hi < (65 : stdgo.GoInt32) : Bool) || (_lo > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1907"
            return stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1909"
        if ((_lo < (65 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, (64 : stdgo.GoInt32));
            _lo = (65 : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1914"
        if ((_hi > (125251 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, (125252 : stdgo.GoInt32), _hi);
            _hi = (125251 : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1921"
        {
            var _c = @:assignType (_lo : stdgo.GoInt32);
            while ((_c <= _hi : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
var _f = @:assignType (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_c) : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1924"
                while (_f != (_c)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _f, _f);
                    _f = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_f);
                };
                _c++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1929"
        return _r;
    }
