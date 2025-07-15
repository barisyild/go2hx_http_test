package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___testcase_10676_static_extension.T_testCanSetField___localname___testCase_10676_static_extension) @:using(_internal.reflect_test.Reflect_test_t_testcansetfield___localname___testcase_10676_static_extension.T_testCanSetField___localname___testCase_10676_static_extension) class T_testCanSetField___localname___testCase_10676 {
    public var _index : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _canSet : Bool = false;
    public function new(?_index:stdgo.Slice<stdgo.GoInt>, ?_canSet:Bool) {
        if (_index != null) this._index = _index;
        if (_canSet != null) this._canSet = _canSet;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_canSet", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_testCanSetField___localname___testCase_10676(_index, _canSet);
    }
}
