package _internal.bytes_test;
function _runesEqual(_a:stdgo.Slice<stdgo.GoInt32>, _b:stdgo.Slice<stdgo.GoInt32>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1270"
        if ((_a.length) != ((_b.length))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1271"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1273"
        if (_a != null) for (_i => _r in _a) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1274"
            if (_r != (_b[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1275"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1278"
        return true;
    }
