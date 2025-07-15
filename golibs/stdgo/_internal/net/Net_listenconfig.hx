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
@:structInit @:using(stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension) @:using(stdgo._internal.net.Net_listenconfig_static_extension.ListenConfig_static_extension) class ListenConfig {
    public var control : (stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
    public var keepAlive : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _mptcpStatus : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus = ((0 : stdgo.GoUInt8) : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus);
    public function new(?control:(stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error, ?keepAlive:stdgo._internal.time.Time_duration.Duration, ?_mptcpStatus:stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus) {
        if (control != null) this.control = control;
        if (keepAlive != null) this.keepAlive = keepAlive;
        if (_mptcpStatus != null) this._mptcpStatus = _mptcpStatus;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "control", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_rawconndotrawconn.__type__stdgodot_internaldotsyscalldotSyscall_rawconndotRawConn] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "keepAlive", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "_mptcpStatus", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_mptcpstatusdott_mptcpstatus.__type__stdgodot_internaldotnetdotNet_t_mptcpstatusdotT_mptcpStatus }, optional : false }])));
    public function __copy__() {
        return new ListenConfig(control, keepAlive, _mptcpStatus);
    }
}
