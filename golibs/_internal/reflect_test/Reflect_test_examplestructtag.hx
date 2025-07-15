package _internal.reflect_test;
function exampleStructTag():Void {
        {};
        var _s = @:assignType (new _internal.reflect_test.Reflect_test_t_examplestructtag___localname___s_1989.T_exampleStructTag___localname___S_1989() : _internal.reflect_test.Reflect_test_t_examplestructtag___localname___s_1989.T_exampleStructTag___localname___S_1989);
        var _st = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_examplestructtag___localname___s_1989dott_examplestructtag___localname___s_1989.__type___internaldotreflect_testdotReflect_test_t_examplestructtag___localname___s_1989dotT_exampleStructTag___localname___S_1989), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_examplestructtag___localname___s_1989dott_examplestructtag___localname___s_1989.__type___internaldotreflect_testdotReflect_test_t_examplestructtag___localname___s_1989dotT_exampleStructTag___localname___S_1989))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _field = @:assignType (_st.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L84"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_field.tag.get(("color" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_field.tag.get(("species" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
