package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_nonemptystruct_static_extension.T_nonEmptyStruct_static_extension) @:using(_internal.reflect_test.Reflect_test_t_nonemptystruct_static_extension.T_nonEmptyStruct_static_extension) class T_nonEmptyStruct {
    public var _member : stdgo.GoInt = 0;
    public function new(?_member:stdgo.GoInt) {
        if (_member != null) this._member = _member;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_member", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_nonEmptyStruct(_member);
    }
}
