package _internal.bytes_test;
function _eq(_a:stdgo.Slice<stdgo.GoString>, _b:stdgo.Slice<stdgo.GoString>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L22"
        if ((_a.length) != ((_b.length))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L23"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L25"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_a.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L26"
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L27"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L30"
        return true;
    }
