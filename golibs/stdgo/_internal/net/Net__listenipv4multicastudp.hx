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
function _listenIPv4MulticastUDP(_c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface>, _ip:stdgo._internal.net.Net_ip.IP):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L260"
        if (({
            final value = _ifi;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L261"
            {
                var _err = @:assignType (stdgo._internal.net.Net__setipv4multicastinterface._setIPv4MulticastInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _ifi) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L262"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L265"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setipv4multicastloopback._setIPv4MulticastLoopback((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, false) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L266"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L268"
        {
            var _err = @:assignType (stdgo._internal.net.Net__joinipv4group._joinIPv4Group((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _ifi, _ip) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L269"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L271"
        return (null : stdgo.Error);
    }
