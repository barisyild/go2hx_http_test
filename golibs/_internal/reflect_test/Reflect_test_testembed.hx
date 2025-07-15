package _internal.reflect_test;
function testEmbed(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_r0.R0() : _internal.reflect_test.Reflect_test_r0.R0), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r0dotr0.__type___internaldotreflect_testdotReflect_test_r0dotR0), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_r0dotr0.__type___internaldotreflect_testdotReflect_test_r0dotR0))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = _typ.fieldByName(("X" : stdgo.GoString)), _f:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6372"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6373"
            _t.fatalf(("FieldByName(\"X\") should fail, returned %v" : stdgo.GoString), new stdgo.AnyInterface(_f.index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
    }
