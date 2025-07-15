package _internal.unicode_test;
function testIsPrintLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L72"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                var _got = (stdgo._internal.unicode.Unicode_isprint.isPrint(_i) : Bool);
var _want = (stdgo._internal.unicode.Unicode_in_.in_(_i, ...(stdgo._internal.unicode.Unicode_printranges.printRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>)) : Bool);
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L75"
                if (_i == ((32 : stdgo.GoInt32))) {
                    _want = true;
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L78"
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L79"
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _i++;
            };
        };
    }
