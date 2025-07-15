package _internal.unicode_test;
function testIsGraphicLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L85"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                var _got = (stdgo._internal.unicode.Unicode_isgraphic.isGraphic(_i) : Bool);
var _want = (stdgo._internal.unicode.Unicode_in_.in_(_i, ...(stdgo._internal.unicode.Unicode_graphicranges.graphicRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>)) : Bool);
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L88"
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L89"
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _i++;
            };
        };
    }
