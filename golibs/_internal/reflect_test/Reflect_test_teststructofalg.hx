package _internal.reflect_test;
function testStructOfAlg(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _st = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v1 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v2 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5519"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v1.interface_(), _v1.interface_())) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5520"
            _t.errorf(("constructed struct %v not equal to itself" : stdgo.GoString), _v1.interface_());
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5522"
        _v1.fieldByName(("X" : stdgo.GoString)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5523"
        {
            var __0 = @:assignType (_v1.interface_() : stdgo.AnyInterface), __1 = @:assignType (_v2.interface_() : stdgo.AnyInterface);
var _i2 = __1, _i1 = __0;
            if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(_i1, _i2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5524"
                _t.errorf(("constructed structs %v and %v should not be equal" : stdgo.GoString), _i1, _i2);
            };
        };
        _st = stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : ("X" : stdgo.GoString), tag : (("x" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        _v1 = stdgo._internal.reflect.Reflect_new_.new_(_st).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5529"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic((stdgo.Go.str() : stdgo.GoString)?.__copy__(), function():Void {
            _v1.interface_() == (_v1.interface_());
        });
    }
