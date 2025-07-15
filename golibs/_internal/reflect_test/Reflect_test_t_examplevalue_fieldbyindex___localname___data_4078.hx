package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_examplevalue_fieldbyindex___localname___data_4078_static_extension.T_exampleValue_FieldByIndex___localname___data_4078_static_extension) @:using(_internal.reflect_test.Reflect_test_t_examplevalue_fieldbyindex___localname___data_4078_static_extension.T_exampleValue_FieldByIndex___localname___data_4078_static_extension) class T_exampleValue_FieldByIndex___localname___data_4078 {
    @:embedded
    public var _user : _internal.reflect_test.Reflect_test_t_examplevalue_fieldbyindex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016 = ({} : _internal.reflect_test.Reflect_test_t_examplevalue_fieldbyindex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016);
    public var _firstName : stdgo.GoString = "";
    public var _lastName : stdgo.GoString = "";
    public function new(?_user:_internal.reflect_test.Reflect_test_t_examplevalue_fieldbyindex___localname___user_4016.T_exampleValue_FieldByIndex___localname___user_4016, ?_firstName:stdgo.GoString, ?_lastName:stdgo.GoString) {
        if (_user != null) this._user = _user;
        if (_firstName != null) this._firstName = _firstName;
        if (_lastName != null) this._lastName = _lastName;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_user", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_examplevalue_fieldbyindex___localname___user_4016dott_examplevalue_fieldbyindex___localname___user_4016.__type___internaldotreflect_testdotReflect_test_t_examplevalue_fieldbyindex___localname___user_4016dotT_exampleValue_FieldByIndex___localname___user_4016 }, optional : false }, { name : "_firstName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_lastName", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_exampleValue_FieldByIndex___localname___data_4078(_user, _firstName, _lastName);
    }
}
