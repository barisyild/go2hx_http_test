package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.NonExportedFirst_asInterface) class NonExportedFirst_static_extension {
    @:keep
    @:tdfield
    static public function _nonexported( _i:_internal.reflect_test.Reflect_test_nonexportedfirst.NonExportedFirst):stdgo.GoInt {
        @:recv var _i:_internal.reflect_test.Reflect_test_nonexportedfirst.NonExportedFirst = _i;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7558"
        throw new stdgo.AnyInterface(("wrong" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function __934Exported( _i:_internal.reflect_test.Reflect_test_nonexportedfirst.NonExportedFirst):Void {
        @:recv var _i:_internal.reflect_test.Reflect_test_nonexportedfirst.NonExportedFirst = _i;
    }
}
