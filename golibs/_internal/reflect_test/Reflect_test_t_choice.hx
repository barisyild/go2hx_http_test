package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_choice_static_extension.T_choice_static_extension) @:using(_internal.reflect_test.Reflect_test_t_choice_static_extension.T_choice_static_extension) class T_choice {
    public var _off : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public var _max : stdgo.GoInt = 0;
    public function new(?_off:stdgo.GoInt, ?_n:stdgo.GoInt, ?_max:stdgo.GoInt) {
        if (_off != null) this._off = _off;
        if (_n != null) this._n = _n;
        if (_max != null) this._max = _max;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_off", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_max", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_choice(_off, _n, _max);
    }
}
