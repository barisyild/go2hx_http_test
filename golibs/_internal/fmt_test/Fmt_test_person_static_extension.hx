package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.Person_asInterface) class Person_static_extension {
    @:keep
    @:tdfield
    static public function goString( _p:_internal.fmt_test.Fmt_test_person.Person):stdgo.GoString {
        @:recv var _p:_internal.fmt_test.Fmt_test_person.Person = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/gostringer_example_test.go#L28"
        if (({
            final value = _p.addr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/gostringer_example_test.go#L29"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Person{Name: %q, Age: %d, Addr: &Address{City: %q, State: %q, Country: %q}}" : stdgo.GoString), new stdgo.AnyInterface(_p.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_p.age : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _p.addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).city, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _p.addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).state, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _p.addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).country, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/gostringer_example_test.go#L31"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("Person{Name: %q, Age: %d}" : stdgo.GoString), new stdgo.AnyInterface(_p.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_p.age : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}
