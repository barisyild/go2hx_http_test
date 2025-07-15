package _internal.bytes_test;
var _makeFieldsInputASCII : () -> stdgo.Slice<stdgo.GoUInt8> = function():stdgo.Slice<stdgo.GoUInt8> {
    var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1916"
    if (_x != null) for (_i => _ in _x) {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1917"
        if (stdgo._internal.math.rand.Rand_intn.intn((10 : stdgo.GoInt)) == ((0 : stdgo.GoInt))) {
            _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        } else {
            _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        };
    };
    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1923"
    return _x;
};
