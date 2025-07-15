package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _minFoldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L382"
        if (((_r < (65 : stdgo.GoInt32) : Bool) || (_r > (125251 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L383"
            return _r;
        };
        var _min = @:assignType (_r : stdgo.GoInt32);
        var _r0 = @:assignType (_r : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L387"
        {
            _r = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r);
            while (_r != (_r0)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L388"
                if ((_min > _r : Bool)) {
                    _min = _r;
                };
                _r = stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L392"
        return _min;
    }
