package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_rusage_static_extension.Rusage_static_extension) @:using(stdgo._internal.syscall.Syscall_rusage_static_extension.Rusage_static_extension) class Rusage {
    public var utime : stdgo._internal.syscall.Syscall_timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_timeval.Timeval);
    public var stime : stdgo._internal.syscall.Syscall_timeval.Timeval = ({} : stdgo._internal.syscall.Syscall_timeval.Timeval);
    public function new(?utime:stdgo._internal.syscall.Syscall_timeval.Timeval, ?stime:stdgo._internal.syscall.Syscall_timeval.Timeval) {
        if (utime != null) this.utime = utime;
        if (stime != null) this.stime = stime;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "utime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_timevaldottimeval.__type__stdgodot_internaldotsyscalldotSyscall_timevaldotTimeval }, optional : false }, { name : "stime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_timevaldottimeval.__type__stdgodot_internaldotsyscalldotSyscall_timevaldotTimeval }, optional : false }])));
    public function __copy__() {
        return new Rusage(utime, stime);
    }
}
