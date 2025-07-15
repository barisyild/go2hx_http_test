package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_typeassertionerror_static_extension.TypeAssertionError_static_extension) @:using(stdgo._internal.runtime.Runtime_typeassertionerror_static_extension.TypeAssertionError_static_extension) class TypeAssertionError {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new TypeAssertionError();
    }
}
