package _internal.bytes_test;
@:structInit @:using(_internal.bytes_test.Bytes_test_t_panicreader_static_extension.T_panicReader_static_extension) @:using(_internal.bytes_test.Bytes_test_t_panicreader_static_extension.T_panicReader_static_extension) class T_panicReader {
    public var _panic : Bool = false;
    public function new(?_panic:Bool) {
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_panic", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_panicReader(_panic);
    }
}
