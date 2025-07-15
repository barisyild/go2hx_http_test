package _internal.fmt_test;
@:structInit @:using(_internal.fmt_test.Fmt_test_panicgo_static_extension.PanicGo_static_extension) @:using(_internal.fmt_test.Fmt_test_panicgo_static_extension.PanicGo_static_extension) class PanicGo {
    public var _message : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_message:stdgo.AnyInterface) {
        if (_message != null) this._message = _message;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_message", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }, optional : false }])));
    public function __copy__() {
        return new PanicGo(_message);
    }
}
