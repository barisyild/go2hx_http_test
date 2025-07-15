package _internal.reflect_test;
function testEmbeddedMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((null : stdgo.Ref<_internal.reflect_test.Reflect_test_outerint.OuterInt>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3311"
        if (((_typ.numMethod() != (1 : stdgo.GoInt)) || (_typ.method((0 : stdgo.GoInt)).func.unsafePointer() != stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(@:selector_x_ident _internal.reflect_test.Reflect_test_outerint_static_extension.OuterInt_static_extension.m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).unsafePointer()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3312"
            _t.errorf(("Wrong method table for OuterInt: (m=%p)" : stdgo.GoString), new stdgo.AnyInterface(@:selector_x_ident _internal.reflect_test.Reflect_test_outerint_static_extension.OuterInt_static_extension.m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3313"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _typ.numMethod() : Bool)) {
                    var _m = @:assignType (_typ.method(_i).__copy__() : stdgo._internal.reflect.Reflect_method.Method);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3315"
                    _t.errorf(("\t%d: %s %p\n" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_m.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_m.func.unsafePointer(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))));
                    _i++;
                };
            };
        };
        var _i = (stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_innerint.InnerInt((3 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_innerint.InnerInt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_innerintdotinnerint.__type___internaldotreflect_testdotReflect_test_innerintdotInnerInt })) : stdgo.Ref<_internal.reflect_test.Reflect_test_innerint.InnerInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3320"
        {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_innerintdotinnerint.__type___internaldotreflect_testdotReflect_test_innerintdotInnerInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_innerintdotinnerint.__type___internaldotreflect_testdotReflect_test_innerintdotInnerInt })))).method((0 : stdgo.GoInt)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_v != ((3i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3321"
                _t.errorf(("i.M() = %d, want 3" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _o = (stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_outerint.OuterInt((1 : stdgo.GoInt), (new _internal.reflect_test.Reflect_test_innerint.InnerInt((2 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_innerint.InnerInt)) : _internal.reflect_test.Reflect_test_outerint.OuterInt), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt })) : stdgo.Ref<_internal.reflect_test.Reflect_test_outerint.OuterInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3325"
        {
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_o, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_outerintdotouterint.__type___internaldotreflect_testdotReflect_test_outerintdotOuterInt })))).method((0 : stdgo.GoInt)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_v != ((2i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3326"
                _t.errorf(("i.M() = %d, want 2" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _f = @:selector_x_ident _internal.reflect_test.Reflect_test_outerint_static_extension.OuterInt_static_extension.m;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3330"
        {
            var _v = @:assignType (_f(_o) : stdgo.GoInt);
            if (_v != ((2 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3331"
                _t.errorf(("f(o) = %d, want 2" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
