package _internal.bytes_test;
function exampleCompare():Void {
        var _a:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L142"
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) < (0 : stdgo.GoInt) : Bool)) {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L145"
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) <= (0 : stdgo.GoInt) : Bool)) {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L148"
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) > (0 : stdgo.GoInt) : Bool)) {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L151"
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) >= (0 : stdgo.GoInt) : Bool)) {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L156"
        if (stdgo._internal.bytes.Bytes_equal.equal(_a, _b)) {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L159"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_a, _b)) {};
    }
