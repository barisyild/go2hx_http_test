package _internal.reflect_test;
function benchmarkIsZero(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _source = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ arrayComparable : new stdgo.GoArray<_internal.reflect_test.Reflect_test_t_.T_>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_t_.T_)]), arrayIncomparable : new stdgo.GoArray<_internal.reflect_test.Reflect_test_t__complex.T__Complex>(4, 4, ...[for (i in 0 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_t__complex.T__Complex)]), structComparable : ({} : _internal.reflect_test.Reflect_test_t_.T_), structIncomparable : ({} : _internal.reflect_test.Reflect_test_t__complex.T__Complex) } : _internal.reflect_test.Reflect_test_t__struct_133.T__struct_133), stdgo._internal.internal.reflect.GoType.structType([{ name : "arrayComparable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }, 4) }, optional : false }, { name : "arrayIncomparable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }, 4) }, optional : false }, { name : "structComparable", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }, optional : false }, { name : "structIncomparable", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "arrayComparable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }, 4) }, optional : false }, { name : "arrayIncomparable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }, 4) }, optional : false }, { name : "structComparable", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }, optional : false }, { name : "structIncomparable", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t__complexdott__complex.__type___internaldotreflect_testdotReflect_test_t__complexdotT__Complex }, optional : false }]))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L118"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _source.numField() : Bool)) {
                var _name = @:assignType (_source.type().field(_i).name.__copy__() : stdgo.GoString);
var _value = @:assignType (_source.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L121"
                _b.run(_name.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L122"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                            _internal.reflect_test.Reflect_test__sink._sink = new stdgo.AnyInterface(_value.isZero(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
                            _i++;
                        };
                    };
                });
                _i++;
            };
        };
    }
