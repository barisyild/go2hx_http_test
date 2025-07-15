package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_pair_static_extension.T_pair_static_extension) @:using(_internal.reflect_test.Reflect_test_t_pair_static_extension.T_pair_static_extension) class T_pair {
    public var _i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _s : stdgo.GoString = "";
    public function new(?_i:stdgo.AnyInterface, ?_s:stdgo.GoString) {
        if (_i != null) this._i = _i;
        if (_s != null) this._s = _s;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }, { name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_pair(_i, _s);
    }
}
