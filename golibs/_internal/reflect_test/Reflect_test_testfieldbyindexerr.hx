package _internal.reflect_test;
function testFieldByIndexErr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_testfieldbyindexerr___localname___b_5184.T_testFieldByIndexErr___localname___B_5184() : _internal.reflect_test.Reflect_test_t_testfieldbyindexerr___localname___b_5184.T_testFieldByIndexErr___localname___B_5184), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testfieldbyindexerr___localname___b_5184dott_testfieldbyindexerr___localname___b_5184.__type___internaldotreflect_testdotReflect_test_t_testfieldbyindexerr___localname___b_5184dotT_testFieldByIndexErr___localname___B_5184), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testfieldbyindexerr___localname___b_5184dott_testfieldbyindexerr___localname___b_5184.__type___internaldotreflect_testdotReflect_test_t_testfieldbyindexerr___localname___b_5184dotT_testFieldByIndexErr___localname___B_5184)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var __tmp__ = _v.fieldByIndexErr((new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), (0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)), __1:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L343"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L344"
            _t.fatal(new stdgo.AnyInterface(("expected error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L346"
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("embedded struct field A" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L347"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
