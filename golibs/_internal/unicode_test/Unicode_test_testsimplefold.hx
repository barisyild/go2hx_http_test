package _internal.unicode_test;
function testSimpleFold(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L426"
        if (_internal.unicode_test.Unicode_test__simplefoldtests._simpleFoldTests != null) for (__0 => _tt in _internal.unicode_test.Unicode_test__simplefoldtests._simpleFoldTests) {
            var _cycle = (_tt : stdgo.Slice<stdgo.GoInt32>);
            var _r = (_cycle[((_cycle.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L429"
            if (_cycle != null) for (__1 => _out in _cycle) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L430"
                {
                    var _r = (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) : stdgo.GoInt32);
                    if (_r != (_out)) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L431"
                        _t.errorf(("SimpleFold(%#U) = %#U, want %#U" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_out));
                    };
                };
                _r = _out;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L437"
        {
            var _r = (stdgo._internal.unicode.Unicode_simplefold.simpleFold((-42 : stdgo.GoInt32)) : stdgo.GoInt32);
            if (_r != ((-42 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L438"
                _t.errorf(("SimpleFold(-42) = %v, want -42" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
