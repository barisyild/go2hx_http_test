package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:structInit @:using(stdgo._internal.internal.poll.Poll_sysfile_static_extension.SysFile_static_extension) @:using(stdgo._internal.internal.poll.Poll_sysfile_static_extension.SysFile_static_extension) class SysFile {
    public var _iovecs : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_iovec.Iovec>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_iovec.Iovec>>);
    public function new(?_iovecs:stdgo.Ref<stdgo.Slice<stdgo._internal.syscall.Syscall_iovec.Iovec>>) {
        if (_iovecs != null) this._iovecs = _iovecs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_iovecs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_iovecdotiovec.__type__stdgodot_internaldotsyscalldotSyscall_iovecdotIovec }) }) }, optional : false }])));
    public function __copy__() {
        return new SysFile(_iovecs);
    }
}
