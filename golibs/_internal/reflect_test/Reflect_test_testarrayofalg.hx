package _internal.reflect_test;
function testArrayOfAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _at = @:assignType (stdgo._internal.reflect.Reflect_arrayof.arrayOf((6 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v1 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v2 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4989"
        if (_v1.interface_() != (_v1.interface_())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4990"
            _t.errorf(("constructed array %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4992"
        _v1.index((5 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4993"
        {
            var __0 = @:assignType (_v1.interface_() : stdgo.AnyInterface), __1 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 == (_i2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4994"
                _t.errorf(("constructed arrays %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        _at = stdgo._internal.reflect.Reflect_arrayof.arrayOf((6 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))));
        _v1 = stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4999"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic((stdgo.Go.str() : stdgo.GoString)?.__copy__(), function():Void {
            _v1.interface_() == (_v1.interface_());
        });
    }
