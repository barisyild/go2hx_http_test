package _internal.reflect_test;
function testInterfaceValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _inter:_internal.reflect_test.Reflect_test_t__struct_75.T__struct_75 = ({ e : (null : stdgo.AnyInterface) } : _internal.reflect_test.Reflect_test_t__struct_75.T__struct_75);
        _inter.e = new stdgo.AnyInterface((123.456 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)));
        var _v1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_inter, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_75.T__struct_75>), stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "e", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }]) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v2 = @:assignType (_v1.elem().field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L726"
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v2.type().string() : stdgo.GoString)?.__copy__(), ("interface {}" : stdgo.GoString));
        var _v3 = @:assignType (_v2.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L728"
        _internal.reflect_test.Reflect_test__assert._assert(_t, (_v3.type().string() : stdgo.GoString)?.__copy__(), ("float64" : stdgo.GoString));
        var _i3 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L731"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_i3, stdgo._internal.internal.reflect.GoType.basic(float64_kind)) : stdgo.GoFloat64), _1 : true };
            } catch(__exception__) {
                { _0 : (0 : stdgo.GoFloat64), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L732"
                _t.error(new stdgo.AnyInterface(("v2.Interface() did not return float64, got " : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = stdgo._internal.reflect.Reflect_typeof.typeOf(_i3);
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
    }
