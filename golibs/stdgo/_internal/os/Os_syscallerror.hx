package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension) @:using(stdgo._internal.os.Os_syscallerror_static_extension.SyscallError_static_extension) class SyscallError {
    public var syscall : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?syscall:stdgo.GoString, ?err:stdgo.Error) {
        if (syscall != null) this.syscall = syscall;
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "syscall", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new SyscallError(syscall, err);
    }
}
