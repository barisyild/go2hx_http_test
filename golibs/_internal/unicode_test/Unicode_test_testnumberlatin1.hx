package _internal.unicode_test;
function testNumberLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L62"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                var _got = (stdgo._internal.unicode.Unicode_isnumber.isNumber(_i) : Bool);
var _want = (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_number.number, _i) : Bool);
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L65"
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L66"
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _i++;
            };
        };
    }
