package _internal.reflect_test;
function benchmarkSelect(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _channel = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L171"
        if (_channel != null) _channel.__close__();
        var _cases:stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L173"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                _cases = (_cases.__append__(({ dir : (2 : stdgo._internal.reflect.Reflect_selectdir.SelectDir), chan : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_channel, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).__copy__() } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L179"
        if ((new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) != null) for (__1 => _numCases in (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (4 : stdgo.GoInt), (8 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L180"
            _b.run(stdgo._internal.strconv.Strconv_itoa.itoa(_numCases)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L181"
                _b.reportAllocs();
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L182"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                        stdgo._internal.reflect.Reflect_select.select((_cases.__slice__(0, _numCases) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>));
                        _i++;
                    };
                };
            });
        };
    }
