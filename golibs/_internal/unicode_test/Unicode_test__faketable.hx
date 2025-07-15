package _internal.unicode_test;
function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16> {
        var _r16:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L497"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _r16 = (_r16.__append__((new stdgo._internal.unicode.Unicode_range16.Range16((((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (12 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_range16.Range16)) : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L500"
        return _r16;
    }
