package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension) @:using(stdgo._internal.os.Os_processstate_static_extension.ProcessState_static_extension) class ProcessState {
    public var _pid : stdgo.GoInt = 0;
    public var _status : stdgo._internal.syscall.Syscall_waitstatus.WaitStatus = ((0 : stdgo.GoUInt32) : stdgo._internal.syscall.Syscall_waitstatus.WaitStatus);
    public var _rusage : stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>);
    public function new(?_pid:stdgo.GoInt, ?_status:stdgo._internal.syscall.Syscall_waitstatus.WaitStatus, ?_rusage:stdgo.Ref<stdgo._internal.syscall.Syscall_rusage.Rusage>) {
        if (_pid != null) this._pid = _pid;
        if (_status != null) this._status = _status;
        if (_rusage != null) this._rusage = _rusage;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_status", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_waitstatusdotwaitstatus.__type__stdgodot_internaldotsyscalldotSyscall_waitstatusdotWaitStatus }, optional : false }, { name : "_rusage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_rusagedotrusage.__type__stdgodot_internaldotsyscalldotSyscall_rusagedotRusage }) }, optional : false }])));
    public function __copy__() {
        return new ProcessState(_pid, _status, _rusage);
    }
}
