package _internal.reflect_test;
function testArrayOfGenericAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _at1 = @:assignType (stdgo._internal.reflect.Reflect_arrayof.arrayOf((5 : stdgo.GoInt), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _at = @:assignType (stdgo._internal.reflect.Reflect_arrayof.arrayOf((6 : stdgo.GoInt), _at1) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v1 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v2 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_at).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5007"
        if (_v1.interface_() != (_v1.interface_())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5008"
            _t.errorf(("constructed array %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5011"
        _v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("abc" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5012"
        _v2.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("efg" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5013"
        {
            var __0 = @:assignType (_v1.interface_() : stdgo.AnyInterface), __1 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 == (_i2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5014"
                _t.errorf(("constructed arrays %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5017"
        _v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("abc" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5018"
        _v2.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(((((_v1.index((0 : stdgo.GoInt)).index((0 : stdgo.GoInt)).string() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)).__slice__(0, (3 : stdgo.GoInt)) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5019"
        {
            var __0 = @:assignType (_v1.interface_() : stdgo.AnyInterface), __1 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (_i1 != (_i2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5020"
                _t.errorf(("constructed arrays %v and %v should be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        var _m = @:assignType (stdgo._internal.reflect.Reflect_makemap.makeMap(stdgo._internal.reflect.Reflect_mapof.mapOf(_at, stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5025"
        _m.setMapIndex(_v1?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5026"
        {
            var __0 = @:assignType (_v1.interface_() : stdgo.AnyInterface), __1 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (!_m.mapIndex(_v2?.__copy__()).isValid()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5027"
                _t.errorf(("constructed arrays %v and %v have different hashes" : stdgo.GoString), _i1, _i2);
            };
        };
    }
