package _internal.reflect_test;
function testFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L294"
        if (_internal.reflect_test.Reflect_test__fieldstests._fieldsTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__fieldstests._fieldsTests) {
            var _test = @:assignType ({
                final x = _test;
                ({ _testName : x._testName?.__copy__(), _val : x._val, _expect : x._expect } : _internal.reflect_test.Reflect_test_t__struct_138.T__struct_138);
            } : _internal.reflect_test.Reflect_test_t__struct_138.T__struct_138);
            //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L296"
            _t.run(_test._testName?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_test._val) : stdgo._internal.reflect.Reflect_type_.Type_);
                var _fields = stdgo._internal.reflect.Reflect_visiblefields.visibleFields(_typ);
                //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L299"
                {
                    var __0 = @:assignType (_fields.length : stdgo.GoInt), __1 = @:assignType (_test._expect.length : stdgo.GoInt);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L300"
                        _t.fatalf(("unexpected field count; got %d want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L303"
                if (_fields != null) for (_j => _field in _fields) {
                    var _expect = @:assignType (_test._expect[(_j : stdgo.GoInt)] : _internal.reflect_test.Reflect_test_t_structfield.T_structField);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L305"
                    _t.logf(("field %d: %s" : stdgo.GoString), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_expect._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    var _gotField = @:assignType (_typ.fieldByIndex(_field.index)?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
                    _gotField.index = _field.index;
                    var _expectField = @:assignType (_typ.fieldByIndex(_expect._index)?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
                    _expectField.index = _expect._index;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L315"
                    if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_gotField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)), new stdgo.AnyInterface(stdgo.Go.asInterface(_expectField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L316"
                        _t.fatalf(("unexpected field result\ngot %#v\nwant %#v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_gotField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)), new stdgo.AnyInterface(stdgo.Go.asInterface(_expectField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)));
                    };
                    var __tmp__ = _typ.fieldByName(_expect._name?.__copy__()), _gotField1:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _ok:Bool = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L322"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L323"
                        _t.fatalf(("field %q not accessible by name" : stdgo.GoString), new stdgo.AnyInterface(_expect._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L325"
                    if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(stdgo.Go.asInterface(_gotField1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)), new stdgo.AnyInterface(stdgo.Go.asInterface(_expectField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/visiblefields_test.go#L326"
                        _t.fatalf(("unexpected FieldByName result; got %#v want %#v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_gotField1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)), new stdgo.AnyInterface(stdgo.Go.asInterface(_expectField, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField)));
                    };
                };
            });
        };
    }
