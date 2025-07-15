package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_person_static_extension.Person_static_extension) @:using(_internal.fmt_test.Fmt_test_person_static_extension.Person_static_extension) class Person {
    public var name : stdgo.GoString = "";
    public var age : stdgo.GoUInt = 0;
    public var addr : stdgo.Ref<_internal.fmt_test.Fmt_test_address.Address> = (null : stdgo.Ref<_internal.fmt_test.Fmt_test_address.Address>);
    public function new(?name:stdgo.GoString, ?age:stdgo.GoUInt, ?addr:stdgo.Ref<_internal.fmt_test.Fmt_test_address.Address>) {
        if (name != null) this.name = name;
        if (age != null) this.age = age;
        if (addr != null) this.addr = addr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "age", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_addressdotaddress.__type___internaldotfmt_testdotFmt_test_addressdotAddress }) }, optional : false }])));
    public function __copy__() {
        return new Person(name, age, addr);
    }
}
