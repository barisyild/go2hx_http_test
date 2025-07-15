package _internal.bytes_test;
function benchmarkTrimASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _cs = @:assignType (("0123456789abcdef" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2198"
        {
            var _k = @:assignType (1 : stdgo.GoInt);
            while ((_k <= (4096 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2199"
                {
                    var _j = @:assignType (1 : stdgo.GoInt);
                    while ((_j <= (16 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2200"
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d:%d" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                            var _x = stdgo._internal.bytes.Bytes_repeat.repeat(((_cs.__slice__(0, _j) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _k);
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2202"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2203"
                                    stdgo._internal.bytes.Bytes_trim.trim((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString).__copy__());
                                    _i++;
                                };
                            };
                        });
                        _j = (_j << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                };
                _k = (_k << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
    }
