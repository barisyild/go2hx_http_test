package _internal.unicode_test;
function _linear(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, _r:stdgo.GoUInt16):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L504"
        if (_ranges != null) for (_i => _ in _ranges) {
            var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L506"
            if ((_r < (@:checkr _range_ ?? throw "null pointer dereference").lo : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L507"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L509"
            if ((_r <= (@:checkr _range_ ?? throw "null pointer dereference").hi : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L510"
                return (((_r - (@:checkr _range_ ?? throw "null pointer dereference").lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw "null pointer dereference").stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L513"
        return false;
    }
