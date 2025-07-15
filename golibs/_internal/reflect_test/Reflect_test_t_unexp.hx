package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_unexp_static_extension.T_unexp_static_extension) @:using(_internal.reflect_test.Reflect_test_t_unexp_static_extension.T_unexp_static_extension) class T_unexp {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_unexp();
    }
}
