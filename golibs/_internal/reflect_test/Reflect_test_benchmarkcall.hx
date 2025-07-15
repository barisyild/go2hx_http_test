package _internal.reflect_test;
function benchmarkCall(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _fv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_a:stdgo.GoString, _b:stdgo.GoString):Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L191"
        _b.reportAllocs();
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L192"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _args = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("a" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("b" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L194"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L195"
                _fv.call(_args);
            };
        });
    }
