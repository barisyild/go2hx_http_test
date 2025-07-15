package _internal.reflect_test;
function testClear(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8371"
        if (_internal.reflect_test.Reflect_test__valuetests._valueTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__valuetests._valueTests) {
            _m[_tt._s] = _tt._i;
        };
        var _mapTestFn = @:assignType (function(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8374"
            _v.clear();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8374"
            return _v.len() == ((0 : stdgo.GoInt));
        } : stdgo._internal.reflect.Reflect_value.Value -> Bool);
        var _s = (new stdgo.Slice<stdgo.Ref<_internal.reflect_test.Reflect_test_t_pair.T_pair>>((_internal.reflect_test.Reflect_test__valuetests._valueTests.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<_internal.reflect_test.Reflect_test_t_pair.T_pair>>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8377"
        if (_s != null) for (_i => _ in _s) {
            _s[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(_internal.reflect_test.Reflect_test__valuetests._valueTests[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_pairdott_pair.__type___internaldotreflect_testdotReflect_test_t_pairdotT_pair })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_pair.T_pair>);
        };
        var _sliceTestFn = @:assignType (function(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8381"
            _v.clear();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8382"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _v.len() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8383"
                    if (!_v.index(_i).isZero()) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8384"
                        return false;
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8387"
            return true;
        } : stdgo._internal.reflect.Reflect_value.Value -> Bool);
        var _panicTestFn = @:assignType (function(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8390"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect.Value.Clear" : stdgo.GoString), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8390"
                _v.clear();
            });
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8390"
            return true;
        } : stdgo._internal.reflect.Reflect_value.Value -> Bool);
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_130.T__struct_130>(4, 4, ...[({ _name : ("map" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }))))?.__copy__(), _testFunc : _mapTestFn } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130), ({ _name : ("slice no pointer" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(), _testFunc : _sliceTestFn } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130), ({ _name : ("slice has pointer" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_pairdott_pair.__type___internaldotreflect_testdotReflect_test_t_pairdotT_pair }) }))))?.__copy__(), _testFunc : _sliceTestFn } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130), ({ _name : ("non-map/slice" : stdgo.GoString), _value : stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__(), _testFunc : _panicTestFn } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _value : ({} : stdgo._internal.reflect.Reflect_value.Value), _testFunc : null } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_130.T__struct_130>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8403"
        if (_tests != null) for (__2 => _tc in _tests) {
            var _tc = @:assignType ({
                final x = _tc;
                ({ _name : x._name?.__copy__(), _value : x._value?.__copy__(), _testFunc : x._testFunc } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130);
            } : _internal.reflect_test.Reflect_test_t__struct_130.T__struct_130);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8405"
            _t.run(_tc._name?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8406"
                _t.parallel();
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8407"
                if (!_tc._testFunc(_tc._value?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8408"
                    _t.errorf(("unexpected result for value.Clear(): %value" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_tc._value, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
                };
            });
        };
    }
