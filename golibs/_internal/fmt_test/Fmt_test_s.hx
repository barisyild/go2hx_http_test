package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_s_static_extension.S_static_extension) @:using(_internal.fmt_test.Fmt_test_s_static_extension.S_static_extension) class S {
    public var f : _internal.fmt_test.Fmt_test_f.F = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_f.F);
    public var g : _internal.fmt_test.Fmt_test_g.G = ((0 : stdgo.GoInt) : _internal.fmt_test.Fmt_test_g.G);
    public function new(?f:_internal.fmt_test.Fmt_test_f.F, ?g:_internal.fmt_test.Fmt_test_g.G) {
        if (f != null) this.f = f;
        if (g != null) this.g = g;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "f", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_fdotf.__type___internaldotfmt_testdotFmt_test_fdotF }, optional : false }, { name : "g", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_gdotg.__type___internaldotfmt_testdotFmt_test_gdotG }, optional : false }])));
    public function __copy__() {
        return new S(f, g);
    }
}
