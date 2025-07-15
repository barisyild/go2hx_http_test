package _internal.bytes_test;
function benchmarkIndexPeriodic(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _key = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(1 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2219"
        for (__0 => _skip in (new stdgo.GoArray<stdgo.GoInt>(6, 6, ...[(2 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt), (16 : stdgo.GoInt), (32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt>).__copy__()) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2220"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("IndexPeriodic%d" : stdgo.GoString), new stdgo.AnyInterface(_skip, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2222"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (_buf.length) : Bool)) {
                        _buf[(_i : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                        _i = (_i + (_skip) : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2225"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L2226"
                        stdgo._internal.bytes.Bytes_index.index(_buf, _key);
                        _i++;
                    };
                };
            });
        };
    }
