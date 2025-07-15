package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_address_static_extension.Address_static_extension) @:using(_internal.fmt_test.Fmt_test_address_static_extension.Address_static_extension) class Address {
    public var city : stdgo.GoString = "";
    public var state : stdgo.GoString = "";
    public var country : stdgo.GoString = "";
    public function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString) {
        if (city != null) this.city = city;
        if (state != null) this.state = state;
        if (country != null) this.country = country;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "city", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "country", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Address(city, state, country);
    }
}
