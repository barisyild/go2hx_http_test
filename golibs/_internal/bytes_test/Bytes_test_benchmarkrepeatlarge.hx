package _internal.bytes_test;
function benchmarkRepeatLarge(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = stdgo._internal.bytes.Bytes_repeat.repeat(((("@" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), (8192 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2101"
        {
            var _j = @:assignType (8 : stdgo.GoInt);
            while ((_j <= (30 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2102"
                if ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (16 : stdgo.GoInt), (4097 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__0 => _k in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (16 : stdgo.GoInt), (4097 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                    var _s = (_s.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>);
                    var _n = @:assignType ((((1 : stdgo.GoInt) << _j : stdgo.GoInt)) / _k : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2105"
                    if (_n == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2106"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2108"
                    _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/%d" : stdgo.GoString), new stdgo.AnyInterface(((1 : stdgo.GoInt) << _j : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2109"
                        {
                            var _i = @:assignType (0 : stdgo.GoInt);
                            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2110"
                                stdgo._internal.bytes.Bytes_repeat.repeat(_s, _n);
                                _i++;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2112"
                        _b.setBytes(((_n * (_s.length) : stdgo.GoInt) : stdgo.GoInt64));
                    });
                };
                _j++;
            };
        };
    }
