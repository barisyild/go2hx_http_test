package _internal.reflect_test;
function testInterfaceGet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _inter:_internal.reflect_test.Reflect_test_t__struct_75.T__struct_75 = ({ e : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_t__struct_75.T__struct_75);
        _inter.e = new stdgo.AnyInterface((123.456 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)));
        var _v1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inter, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_75.T__struct_75>), stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }]) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v2 = @:assignType (_v1.elem().field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L713"
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v2.type().string() : stdgo.GoString)?.__copy__(), ("interface {}" : stdgo.GoString));
        var _i2 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
        var _v3 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_i2)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L716"
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v3.type().string() : stdgo.GoString)?.__copy__(), ("float64" : stdgo.GoString));
    }
