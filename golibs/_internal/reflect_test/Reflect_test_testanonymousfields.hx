package _internal.reflect_test;
function testAnonymousFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _field:stdgo._internal.reflect.Reflect_structfield.StructField = ({} : stdgo._internal.reflect.Reflect_structfield.StructField);
        var _ok:Bool = false;
        var _t1:_internal.reflect_test.Reflect_test_t1.T1 = ({} : _internal.reflect_test.Reflect_test_t1.T1);
        var _type1 = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_t1, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t1dott1.__type___internaldotreflect_testdotReflect_test_t1dotT1), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t1dott1.__type___internaldotreflect_testdotReflect_test_t1dotT1))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2890"
        {
            {
                var __tmp__ = _type1.fieldByName(("int" : stdgo.GoString));
                _field = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2891"
                _t.fatal(new stdgo.AnyInterface(("no field \'int\'" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2893"
        if (_field.index[(0 : stdgo.GoInt)] != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2894"
            _t.error(new stdgo.AnyInterface(("field index should be 1; is" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_field.index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
    }
