package _internal.reflect_test;
function testStructOfFieldName(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5151"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("has invalid name" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5152"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("Valid" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("1nvalid" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5159"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("has invalid name" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5160"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("Val1d" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("+" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5167"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("has no name" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5168"
            stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>));
        });
        var _validFields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(3, 3, ...[({ name : ("φ" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("ValidName" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("Val1dNam5" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        var _validStruct = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf(_validFields) : stdgo._internal.reflect.Reflect_type_.Type_);
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5192"
        {
            var __0 = @:assignType ((_validStruct.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType (("struct { φ string; ValidName string; Val1dNam5 string }" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5193"
                _t.errorf(("StructOf(validFields).String()=%q, want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
