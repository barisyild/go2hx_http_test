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
@:keep @:allow(stdgo._internal.net.Net.Dialer_asInterface) class Dialer_static_extension {
    @:keep
    @:tdfield
    static public function dialContext( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        #if sys {
            final network:String = _network;
            var address:String = _address;
            final colonIndex = address.indexOf(":");
            if (colonIndex == -1) throw "invalid address formatting: " + address;
            address = address.substr(0, colonIndex);
            if (address == "") address = "0.0.0.0";
            final host = new sys.net.Host(address);
            final port = Std.parseInt(address.substr(colonIndex + 1));
            final addr = new stdgo._internal.net.Net_haxeaddr.HaxeAddr(network, host.toString(), port);
            switch network {
                case "tcp", "tcp4", "tcp6":
                    final s = new sys.net.Socket();
s.connect(host, port);
return { _0 : new stdgo._internal.net.Net_haxeconn.HaxeConn(addr, s), _1 : null };
                case "udp", "udp4", "udp6":
                    throw "unimplemented network: " + network;
                case "ip", "ip4", "ip6":
                    throw "unimplemented network: " + network;
                case "unix", "unixgram", "unixpacket":
                    throw "unimplemented network: " + network;
                default:
                    throw "unimplemented network: " + network;
            };
        } #else throw "Dialer dialContext only implemented on sys targets" #end;
    }
    @:keep
    @:tdfield
    static public function dial( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L433"
        return _d.dialContext(stdgo._internal.context.Context_background.background(), _network?.__copy__(), _address?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setMultipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _use:Bool):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L347"
        (stdgo.Go.pointer((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mptcpStatus) : stdgo._internal.net.Net_t_mptcpstatuspointer.T_mptcpStatusPointer)._set(_use);
    }
    @:keep
    @:tdfield
    static public function multipathTCP( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L337"
        return (stdgo.Go.pointer((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mptcpStatus) : stdgo._internal.net.Net_t_mptcpstatuspointer.T_mptcpStatusPointer)._get();
    }
    @:keep
    @:tdfield
    static public function _fallbackDelay( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L221"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fallbackDelay > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L222"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fallbackDelay;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L224"
            return (300000000i64 : stdgo._internal.time.Time_duration.Duration);
        };
    }
    @:keep
    @:tdfield
    static public function _resolver( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>):stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L190"
        if (({
            final value = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).resolver;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L191"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).resolver;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L193"
        return stdgo._internal.net.Net_defaultresolver.defaultResolver;
    }
    @:keep
    @:tdfield
    static public function _deadline( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>, _ctx:stdgo._internal.context.Context_context.Context, _now:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        var _earliest = ({} : stdgo._internal.time.Time_time.Time);
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L180"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            _earliest = _now.add((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).timeout)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L183"
        {
            var __tmp__ = _ctx.deadline(), _d:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                _earliest = stdgo._internal.net.Net__minnonzerotime._minNonzeroTime(_earliest?.__copy__(), _d?.__copy__())?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L186"
        return _earliest = stdgo._internal.net.Net__minnonzerotime._minNonzeroTime(_earliest?.__copy__(), (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).deadline?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _dualStack( _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer>):Bool {
        @:recv var _d:stdgo.Ref<stdgo._internal.net.Net_dialer.Dialer> = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L161"
        return ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fallbackDelay >= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool);
    }
}
