package _internal.reflect_test;
function testMethodPkgPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = (null : stdgo.Ref<_internal.reflect_test.Reflect_test_t__interface_9.T__interface_9>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("x", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }), new stdgo._internal.internal.reflect.MethodType("y", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }), new stdgo._internal.internal.reflect.MethodType("_x", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }), new stdgo._internal.internal.reflect.MethodType("_y", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]) }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _tests = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_101.T__struct_101>(4, 4, ...[({ _name : ("X" : stdgo.GoString), _pkgPath : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _exported : true } : _internal.reflect_test.Reflect_test_t__struct_101.T__struct_101), ({ _name : ("Y" : stdgo.GoString), _pkgPath : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _exported : true } : _internal.reflect_test.Reflect_test_t__struct_101.T__struct_101), ({ _name : ("x" : stdgo.GoString), _pkgPath : ("reflect_test" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_t__struct_101.T__struct_101), ({ _name : ("y" : stdgo.GoString), _pkgPath : ("reflect_test" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_t__struct_101.T__struct_101)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _pkgPath : ("" : stdgo.GoString), _exported : false } : _internal.reflect_test.Reflect_test_t__struct_101.T__struct_101)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_t__struct_101.T__struct_101>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3218"
        if (_tests != null) for (__1 => _test in _tests) {
            var __tmp__ = _typ.methodByName(_test._name?.__copy__()), _m:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, __2:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3220"
            {
                var __0 = @:assignType (_m.pkgPath?.__copy__() : stdgo.GoString), __1 = @:assignType (_test._pkgPath?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3221"
                    _t.errorf(("MethodByName(%q).PkgPath = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3223"
            {
                var __0 = @:assignType (_m.isExported() : Bool), __1 = @:assignType (_test._exported : Bool);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3224"
                    _t.errorf(("MethodByName(%q).IsExported = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
