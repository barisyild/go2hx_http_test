package _internal.bytes_test;
var _makeFieldsInput : () -> stdgo.Slice<stdgo.GoUInt8> = function():stdgo.Slice<stdgo.GoUInt8> {
    var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1896"
    if (_x != null) for (_i => _ in _x) {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1897"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = stdgo._internal.math.rand.Rand_intn.intn((10 : stdgo.GoInt));
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo.GoInt)))) {
                        _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                        break;
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1901"
                        if (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1902"
                            (_x.__slice__((_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(("χ" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1903"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1905"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else {
                        _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        break;
                    };
                };
                break;
            };
        };
    };
    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1910"
    return _x;
};
