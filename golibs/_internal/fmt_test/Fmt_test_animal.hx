package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_animal_static_extension.Animal_static_extension) @:using(_internal.fmt_test.Fmt_test_animal_static_extension.Animal_static_extension) class Animal {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "age", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }])));
    public function __copy__() {
        return new Animal(name, age);
    }
}
