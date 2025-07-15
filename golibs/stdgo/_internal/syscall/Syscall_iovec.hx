package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_iovec_static_extension.Iovec_static_extension) @:using(stdgo._internal.syscall.Syscall_iovec_static_extension.Iovec_static_extension) class Iovec {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new Iovec();
    }
}
