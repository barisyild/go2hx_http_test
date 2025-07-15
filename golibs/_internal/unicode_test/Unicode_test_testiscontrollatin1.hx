package _internal.unicode_test;
function testIsControlLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L16"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (255 : stdgo.GoInt32) : Bool)) {
                var _got = (stdgo._internal.unicode.Unicode_iscontrol.isControl(_i) : Bool);
var _want = (false : Bool);
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L19"
                if ((((0 : stdgo.GoInt32) <= _i : Bool) && (_i <= (31 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                } else if ((((127 : stdgo.GoInt32) <= _i : Bool) && (_i <= (159 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                };
//"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L25"
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/graphic_test.go#L26"
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
                _i++;
            };
        };
    }
