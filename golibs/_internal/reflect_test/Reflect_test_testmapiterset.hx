package _internal.reflect_test;
function testMapIterSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L348"
        if (_internal.reflect_test.Reflect_test__valuetests._valueTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__valuetests._valueTests) {
            _m[_tt._s] = _tt._i;
        };
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _k = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_v.type().key()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _e = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_v.type().elem()).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _iter = _v.mapRange();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L357"
        while (_iter.next()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L358"
            _k.setIterKey(_iter);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L359"
            _e.setIterValue(_iter);
            var _want = @:assignType (_m[(_k.string() : stdgo.GoString)] ?? (null : stdgo.AnyInterface) : stdgo.AnyInterface);
            var _got = @:assignType (_e.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L362"
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L363"
                _t.errorf(("%q: want (%T) %v, got (%T) %v" : stdgo.GoString), new stdgo.AnyInterface((_k.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _want, _want, _got, _got);
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L365"
            {
                var __0 = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_k?.__copy__())?.__copy__() : stdgo.GoString), __1 = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_iter.key()?.__copy__())?.__copy__() : stdgo.GoString);
var _key = __1, _setkey = __0;
                if (_setkey != (_key)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L366"
                    _t.errorf(("MapIter.Key() = %q, MapIter.SetKey() = %q" : stdgo.GoString), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_setkey, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L368"
            {
                var __0 = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_e?.__copy__())?.__copy__() : stdgo.GoString), __1 = @:assignType (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_iter.value()?.__copy__())?.__copy__() : stdgo.GoString);
var _val = __1, _setval = __0;
                if (_setval != (_val)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L369"
                    _t.errorf(("MapIter.Value() = %q, MapIter.SetValue() = %q" : stdgo.GoString), new stdgo.AnyInterface(_val, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_setval, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L373"
        if (stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L374"
            return;
        };
        var _got = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            var _iter = _v.mapRange();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L379"
            while (_iter.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L380"
                _k.setIterKey(_iter);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L381"
                _e.setIterValue(_iter);
            };
        }) : stdgo.GoInt);
        var _want = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L388"
        if (_got != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L389"
            _t.errorf(("wanted %d alloc, got %d" : stdgo.GoString), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
