package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_si_static_extension.SI_static_extension) @:using(_internal.fmt_test.Fmt_test_si_static_extension.SI_static_extension) class SI {
    public var i : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?i:stdgo.AnyInterface) {
        if (i != null) this.i = i;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])));
    public function __copy__() {
        return new SI(i);
    }
}
