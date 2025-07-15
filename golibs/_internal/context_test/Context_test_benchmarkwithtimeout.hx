package _internal.context_test;
function benchmarkWithTimeout(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L41"
        {
            var _concurrency = @:assignType (40 : stdgo.GoInt);
            while ((_concurrency <= (400000 : stdgo.GoInt) : Bool)) {
                var _name = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("concurrency=%d" : stdgo.GoString), new stdgo.AnyInterface(_concurrency, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L43"
                _b.run(_name.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L44"
                    _internal.context_test.Context_test__benchmarkwithtimeout._benchmarkWithTimeout(_b, _concurrency);
                });
                _concurrency = (_concurrency * ((100 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
