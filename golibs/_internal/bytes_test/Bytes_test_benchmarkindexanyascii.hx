package _internal.bytes_test;
function benchmarkIndexAnyASCII(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(35 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (2048 : stdgo.GoInt));
        var _cs = @:assignType (("0123456789abcdefghijklmnopqrstuvwxyz0123456789abcdefghijklmnopqrstuvwxyz" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2143"
        {
            var _k = @:assignType (1 : stdgo.GoInt);
            while ((_k <= (2048 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2144"
                {
                    var _j = @:assignType (1 : stdgo.GoInt);
                    while ((_j <= (64 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2145"
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d:%d" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2146"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2147"
                                    stdgo._internal.bytes.Bytes_indexany.indexAny((_x.__slice__(0, _k) : stdgo.Slice<stdgo.GoUInt8>), (_cs.__slice__(0, _j) : stdgo.GoString).__copy__());
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
