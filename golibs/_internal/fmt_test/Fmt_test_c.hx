package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_c_static_extension.C_static_extension) @:using(_internal.fmt_test.Fmt_test_c_static_extension.C_static_extension) class C {
    public var _i : stdgo.GoInt = 0;
    @:embedded
    public var b : _internal.fmt_test.Fmt_test_b.B = ({} : _internal.fmt_test.Fmt_test_b.B);
    public function new(?_i:stdgo.GoInt, ?b:_internal.fmt_test.Fmt_test_b.B) {
        if (_i != null) this._i = _i;
        if (b != null) this.b = b;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "b", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_bdotb.__type___internaldotfmt_testdotFmt_test_bdotB }, optional : false }])));
    public function __copy__() {
        return new C(_i, b);
    }
}
