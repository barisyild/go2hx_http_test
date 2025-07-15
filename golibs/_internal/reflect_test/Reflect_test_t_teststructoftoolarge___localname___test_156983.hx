package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983_static_extension.T_testStructOfTooLarge___localname___test_156983_static_extension) @:using(_internal.reflect_test.Reflect_test_t_teststructoftoolarge___localname___test_156983_static_extension.T_testStructOfTooLarge___localname___test_156983_static_extension) class T_testStructOfTooLarge___localname___test_156983 {
    public var _shouldPanic : Bool = false;
    public var _fields : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField> = (null : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>);
    public function new(?_shouldPanic:Bool, ?_fields:stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>) {
        if (_shouldPanic != null) this._shouldPanic = _shouldPanic;
        if (_fields != null) this._fields = _fields;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_shouldPanic", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_fields", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_structfielddotstructfield.__type__stdgodot_internaldotreflectdotReflect_structfielddotStructField }) }, optional : false }])));
    public function __copy__() {
        return new T_testStructOfTooLarge___localname___test_156983(_shouldPanic, _fields);
    }
}
