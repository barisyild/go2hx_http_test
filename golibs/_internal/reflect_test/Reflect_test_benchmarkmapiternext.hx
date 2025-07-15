package _internal.reflect_test;
function benchmarkMapIterNext(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (0 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("c" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("d" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _it = _m.mapRange();
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L393"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L394"
                while (_it.next()) {};
//"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L396"
                _it.reset(_m.__copy__());
                _i++;
            };
        };
    }
