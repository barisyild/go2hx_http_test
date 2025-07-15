package _internal.context_test;
function benchmarkDeepValueSameGoRoutine(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L178"
        if ((new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__0 => _depth in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(10 : stdgo.GoInt), (20 : stdgo.GoInt), (30 : stdgo.GoInt), (50 : stdgo.GoInt), (100 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _ctx = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L180"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _depth : Bool)) {
                    _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L184"
            _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("depth=%d" : stdgo.GoString), new stdgo.AnyInterface(_depth, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L185"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/context/benchmark_test.go#L186"
                        _ctx.value(new stdgo.AnyInterface((-1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        _i++;
                    };
                };
            });
        };
    }
