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
function _listenIPv6MulticastUDP(_c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface>, _ip:stdgo._internal.net.Net_ip.IP):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L275"
        if (({
            final value = _ifi;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L276"
            {
                var _err = @:assignType (stdgo._internal.net.Net__setipv6multicastinterface._setIPv6MulticastInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _ifi) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L277"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L280"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setipv6multicastloopback._setIPv6MulticastLoopback((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, false) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L281"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L283"
        {
            var _err = @:assignType (stdgo._internal.net.Net__joinipv6group._joinIPv6Group((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _ifi, _ip) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L284"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L286"
        return (null : stdgo.Error);
    }
