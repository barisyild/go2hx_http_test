package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_recur_static_extension.Recur_static_extension) @:using(_internal.fmt_test.Fmt_test_recur_static_extension.Recur_static_extension) class Recur {
    public var _i : stdgo.GoInt = 0;
    public var _failed : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public function new(?_i:stdgo.GoInt, ?_failed:stdgo.Pointer<Bool>) {
        if (_i != null) this._i = _i;
        if (_failed != null) this._failed = _failed;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_failed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Recur(_i, _failed);
    }
}
