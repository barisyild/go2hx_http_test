package _internal.reflect_test;
function exampleStructTag_Lookup():Void {
        {};
        var _s = @:assignType (new _internal.reflect_test.Reflect_test_t_examplestructtag_lookup___localname___s_2238.T_exampleStructTag_Lookup___localname___S_2238() : _internal.reflect_test.Reflect_test_t_examplestructtag_lookup___localname___s_2238.T_exampleStructTag_Lookup___localname___S_2238);
        var _st = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_examplestructtag_lookup___localname___s_2238dott_examplestructtag_lookup___localname___s_2238.__type___internaldotreflect_testdotReflect_test_t_examplestructtag_lookup___localname___s_2238dotT_exampleStructTag_Lookup___localname___S_2238), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_examplestructtag_lookup___localname___s_2238dott_examplestructtag_lookup___localname___s_2238.__type___internaldotreflect_testdotReflect_test_t_examplestructtag_lookup___localname___s_2238dotT_exampleStructTag_Lookup___localname___S_2238))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L99"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _st.numField() : Bool)) {
                var _field = @:assignType (_st.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L101"
                {
                    var __tmp__ = _field.tag.lookup(("alias" : stdgo.GoString)), _alias:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L102"
                        if (_alias == ((stdgo.Go.str() : stdgo.GoString))) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L103"
                            stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("(blank)" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L105"
                            stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_alias, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L108"
                        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(("(not specified)" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
                _i++;
            };
        };
    }
