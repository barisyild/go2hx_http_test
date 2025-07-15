package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_b_static_extension.B_static_extension) @:using(_internal.fmt_test.Fmt_test_b_static_extension.B_static_extension) class B {
    public var i : _internal.fmt_test.Fmt_test_i.I = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_i.I);
    public var _j : stdgo.GoInt = 0;
    public function new(?i:_internal.fmt_test.Fmt_test_i.I, ?_j:stdgo.GoInt) {
        if (i != null) this.i = i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "i", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_idoti.__type___internaldotfmt_testdotFmt_test_idotI }, optional : false }, { name : "_j", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new B(i, _j);
    }
}
