package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_ftest_static_extension.FTest_static_extension) @:using(_internal.reflect_test.Reflect_test_ftest_static_extension.FTest_static_extension) class FTest {
    public var _s : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _name : stdgo.GoString = "";
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _value : stdgo.GoInt = 0;
    public function new(?_s:stdgo.AnyInterface, ?_name:stdgo.GoString, ?_index:stdgo.Slice<stdgo.GoInt>, ?_value:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_name != null) this._name = _name;
        if (_index != null) this._index = _index;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new FTest(_s, _name, _index, _value);
    }
}
