package _internal.bytes_test;
function benchmarkCompareBytesBigBothUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L259"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L260"
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("offset=%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L261"
                    _internal.bytes_test.Bytes_test__benchmarkcomparebytesbigbothunaligned._benchmarkCompareBytesBigBothUnaligned(_b, _i);
                });
                _i++;
            };
        };
    }
