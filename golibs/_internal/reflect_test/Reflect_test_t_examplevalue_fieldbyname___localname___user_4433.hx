package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_examplevalue_fieldbyname___localname___user_4433_static_extension.T_exampleValue_FieldByName___localname___user_4433_static_extension) @:using(_internal.reflect_test.Reflect_test_t_examplevalue_fieldbyname___localname___user_4433_static_extension.T_exampleValue_FieldByName___localname___user_4433_static_extension) class T_exampleValue_FieldByName___localname___user_4433 {
    public var _firstName : stdgo.GoString = "";
    public var _lastName : stdgo.GoString = "";
    public function new(?_firstName:stdgo.GoString, ?_lastName:stdgo.GoString) {
        if (_firstName != null) this._firstName = _firstName;
        if (_lastName != null) this._lastName = _lastName;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_firstName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_lastName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_exampleValue_FieldByName___localname___user_4433(_firstName, _lastName);
    }
}
