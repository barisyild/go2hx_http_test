package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_recursiveint_static_extension.RecursiveInt_static_extension) @:using(_internal.fmt_test.Fmt_test_recursiveint_static_extension.RecursiveInt_static_extension) class RecursiveInt {
    public var _i : stdgo.GoInt = 0;
    public var _next : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt> = (null : stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>);
    public function new(?_i:stdgo.GoInt, ?_next:stdgo.Ref<_internal.fmt_test.Fmt_test_recursiveint.RecursiveInt>) {
        if (_i != null) this._i = _i;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_recursiveintdotrecursiveint.__type___internaldotfmt_testdotFmt_test_recursiveintdotRecursiveInt }) }, optional : false }])));
    public function __copy__() {
        return new RecursiveInt(_i, _next);
    }
}
