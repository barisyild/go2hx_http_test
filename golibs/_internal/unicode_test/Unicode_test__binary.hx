package _internal.unicode_test;
function _binary(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, _r:stdgo.GoUInt16):Bool {
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_ranges.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L520"
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L523"
            if ((((@:checkr _range_ ?? throw "null pointer dereference").lo <= _r : Bool) && (_r <= (@:checkr _range_ ?? throw "null pointer dereference").hi : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L524"
                return (((_r - (@:checkr _range_ ?? throw "null pointer dereference").lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw "null pointer dereference").stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L526"
            if ((_r < (@:checkr _range_ ?? throw "null pointer dereference").lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L532"
        return false;
    }
