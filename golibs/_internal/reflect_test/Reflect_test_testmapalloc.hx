package _internal.reflect_test;
function testMapAlloc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _k = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((5 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7256"
            _m.setMapIndex(_k?.__copy__(), _v?.__copy__());
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7258"
        if ((_allocs > (0.5 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7259"
            _t.errorf(("allocs per map assignment: want 0 got %f" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
        {};
        var _tmp = @:assignType (0 : stdgo.GoInt);
        var _tmp__pointer__ = stdgo.Go.pointer(_tmp);
        var _val = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_tmp__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _allocs = stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            var _mv = @:assignType (stdgo._internal.reflect.Reflect_makemapwithsize.makeMapWithSize(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(({
                final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), (1000 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7268"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (500 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7269"
                    _val.setInt((_i : stdgo.GoInt64));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7270"
                    _mv.setMapIndex(_val.__copy__(), _val.__copy__());
                    _i++;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7273"
        if ((_allocs > (10 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7274"
            _t.errorf(("allocs per map assignment: want at most 10 got %f" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
