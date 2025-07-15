package _internal.reflect_test;
function testValue_EqualNonComparable(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _invalid = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        var _values = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(11, 11, ...[
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((null : () -> Void)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function():Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(((new _internal.reflect_test.Reflect_test_noncomparablestruct.NonComparableStruct() : _internal.reflect_test.Reflect_test_noncomparablestruct.NonComparableStruct)), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_noncomparablestructdotnoncomparablestruct.__type___internaldotreflect_testdotReflect_test_noncomparablestructdotNonComparableStruct), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_noncomparablestructdotnoncomparablestruct.__type___internaldotreflect_testdotReflect_test_noncomparablestructdotNonComparableStruct)))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>(0, 0, ...[]) : stdgo.GoArray<stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, 0))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.GoArray<() -> Void>(0, 0, ...[]) : stdgo.GoArray<() -> Void>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, 0))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((new stdgo.GoArray<_internal.reflect_test.Reflect_test_t__struct_127.T__struct_127>(1, 1, ...[({ i : new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))) } : _internal.reflect_test.Reflect_test_t__struct_127.T__struct_127)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({ i : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_t__struct_127.T__struct_127)])) : stdgo.GoArray<_internal.reflect_test.Reflect_test_t__struct_127.T__struct_127>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }]) }, 1))))?.__copy__(),
stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[new stdgo.AnyInterface((new stdgo.GoArray<stdgo.AnyInterface>(1, 1, ...[new stdgo.AnyInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))]) : stdgo.GoArray<stdgo.AnyInterface>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, 1)))]) : stdgo.GoArray<stdgo.AnyInterface>)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, 1))))?.__copy__()].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8341"
        if (_values != null) for (__1 => _value in _values) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8343"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("are not comparable" : stdgo.GoString), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8343"
                _value.equal(_value?.__copy__());
            });
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8346"
            {
                var _r = @:assignType (_value.equal(_invalid?.__copy__()) : Bool);
                if (_r != (false)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L8347"
                    _t.errorf(("%s == invalid got %t, want false" : stdgo.GoString), ({
                        final __t__ = _value.type();
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
