package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_structfield_static_extension.T_structField_static_extension) @:using(_internal.reflect_test.Reflect_test_t_structfield_static_extension.T_structField_static_extension) class T_structField {
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_name:stdgo.GoString, ?_index:stdgo.Slice<stdgo.GoInt>) {
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_structField(_name, _index);
    }
}
