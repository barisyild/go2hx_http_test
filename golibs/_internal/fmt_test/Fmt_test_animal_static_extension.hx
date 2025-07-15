package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.Animal_asInterface) class Animal_static_extension {
    @:keep
    @:tdfield
    static public function string( _a:_internal.fmt_test.Fmt_test_animal.Animal):stdgo.GoString {
        @:recv var _a:_internal.fmt_test.Fmt_test_animal.Animal = _a?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_example_test.go#L19"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v (%d)" : stdgo.GoString), new stdgo.AnyInterface(_a.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_a.age, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint_kind))))?.__copy__();
    }
}
