package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension) @:using(stdgo._internal.net.Net_dialer_static_extension.Dialer_static_extension) class Dialer {
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var deadline : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var localAddr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var dualStack : Bool = false;
    public var fallbackDelay : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var keepAlive : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var resolver : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = (null : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
    public var cancel : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var control : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public var controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public var _mptcpStatus : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus = ((0 : stdgo.GoUInt8) : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus);
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?deadline:stdgo._internal.time.Time_time.Time, ?localAddr:stdgo._internal.net.Net_addr.Addr, ?dualStack:Bool, ?fallbackDelay:stdgo._internal.time.Time_duration.Duration, ?keepAlive:stdgo._internal.time.Time_duration.Duration, ?resolver:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>, ?cancel:stdgo.Chan<{ }>, ?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?controlContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?_mptcpStatus:stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus) {
        if (timeout != null) this.timeout = timeout;
        if (deadline != null) this.deadline = deadline;
        if (localAddr != null) this.localAddr = localAddr;
        if (dualStack != null) this.dualStack = dualStack;
        if (fallbackDelay != null) this.fallbackDelay = fallbackDelay;
        if (keepAlive != null) this.keepAlive = keepAlive;
        if (resolver != null) this.resolver = resolver;
        if (cancel != null) this.cancel = cancel;
        if (control != null) this.control = control;
        if (controlContext != null) this.controlContext = controlContext;
        if (_mptcpStatus != null) this._mptcpStatus = _mptcpStatus;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "timeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "deadline", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "localAddr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr }, optional : false },
{ name : "dualStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "fallbackDelay", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "keepAlive", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "resolver", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_resolverdotresolver.__type__stdgodot_internaldotnetdotNet_resolverdotResolver }) }, optional : false },
{ name : "cancel", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "control", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_rawconndotrawconn.__type__stdgodot_internaldotsyscalldotSyscall_rawconndotRawConn] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "controlContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_rawconndotrawconn.__type__stdgodot_internaldotsyscalldotSyscall_rawconndotRawConn] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_mptcpStatus", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_mptcpstatusdott_mptcpstatus.__type__stdgodot_internaldotnetdotNet_t_mptcpstatusdotT_mptcpStatus }, optional : false }])));
    public function __copy__() {
        return new Dialer(
timeout,
deadline,
localAddr,
dualStack,
fallbackDelay,
keepAlive,
resolver,
cancel,
control,
controlContext,
_mptcpStatus);
    }
}
