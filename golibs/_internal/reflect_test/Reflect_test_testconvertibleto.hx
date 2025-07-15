package _internal.reflect_test;
function testConvertibleTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct() : stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample1dotexample1_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample1dotExample1_mystructdotMyStruct), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample1dotexample1_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample1dotExample1_mystructdotMyStruct))).type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t2 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct() : stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample2dotexample2_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample2dotExample2_mystructdotMyStruct), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample2dotexample2_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample2dotExample2_mystructdotMyStruct))).type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7763"
        if (_t1.convertibleTo(_t2)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7764"
            _t.fatalf(("(%s).ConvertibleTo(%s) = true, want false" : stdgo.GoString), ({
                final __t__ = _t1;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), ({
                final __t__ = _t2;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _t3 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct)])) : stdgo.Slice<stdgo._internal.reflect.internal.example1.Example1_mystruct.MyStruct>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample1dotexample1_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample1dotExample1_mystructdotMyStruct })))).type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _t4 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((new stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct)])) : stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample2dotexample2_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample2dotExample2_mystructdotMyStruct })))).type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7770"
        if (_t3.convertibleTo(_t4)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7771"
            _t.fatalf(("(%s).ConvertibleTo(%s) = true, want false" : stdgo.GoString), ({
                final __t__ = _t3;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), ({
                final __t__ = _t4;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
