package _internal.reflect_test;
function testStructOfDifferentPkgPath(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fields = (new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("f1" : stdgo.GoString), pkgPath : ("p1" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("f2" : stdgo.GoString), pkgPath : ("p2" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5946"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("different PkgPath" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5947"
            stdgo._internal.reflect.Reflect_structof.structOf(_fields);
        });
    }
