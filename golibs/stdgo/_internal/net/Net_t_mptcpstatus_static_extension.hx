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
@:keep @:allow(stdgo._internal.net.Net.T_mptcpStatus_asInterface) class T_mptcpStatus_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function _set( _m:stdgo.Pointer<stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus>, _use:Bool):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L56"
        if (_use) {
            _m.value = (1 : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus);
        } else {
            _m.value = (2 : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus);
        };
    }
    @:keep
    @:pointer
    @:tdfield
    static public function _get( _m:stdgo.Pointer<stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L38"
        {
            final __value__ = _m.value;
            if (__value__ == ((1 : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus))) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L40"
                return true;
            } else if (__value__ == ((2 : stdgo._internal.net.Net_t_mptcpstatus.T_mptcpStatus))) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L42"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L46"
        if (stdgo._internal.net.Net__multipathtcp._multipathtcp.value() == (("1" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L47"
            stdgo._internal.net.Net__multipathtcp._multipathtcp.incNonDefault();
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L49"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L52"
        return false;
    }
}
