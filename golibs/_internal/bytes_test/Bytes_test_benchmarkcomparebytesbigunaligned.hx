package _internal.bytes_test;
function benchmarkCompareBytesBigUnaligned(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L233"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L234"
                _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("offset=%d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L235"
                    _internal.bytes_test.Bytes_test__benchmarkcomparebytesbigunaligned._benchmarkCompareBytesBigUnaligned(_b, _i);
                });
                _i++;
            };
        };
    }
