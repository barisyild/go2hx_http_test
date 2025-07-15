package _internal.reflect_test;
function testImplements(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L192"
        if (_internal.reflect_test.Reflect_test__implementstests._implementsTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__implementstests._implementsTests) {
            var _xv = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._x).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
            var _xt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._t).elem() : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L195"
            {
                var _b = @:assignType (_xv.implements_(_xt) : Bool);
                if (_b != (_tt._b)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L196"
                    _t.errorf(("(%s).Implements(%s) = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface((_xv.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_xt.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_tt._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        };
    }
