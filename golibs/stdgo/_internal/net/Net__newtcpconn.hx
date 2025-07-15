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
function _newTCPConn(_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>, _keepAlive:stdgo._internal.time.Time_duration.Duration, _keepAliveHook:stdgo._internal.time.Time_duration.Duration -> Void):stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> {
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L239"
        stdgo._internal.net.Net__setnodelay._setNoDelay(_fd, true);
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L240"
        if (_keepAlive == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            _keepAlive = (15000000000i64 : stdgo._internal.time.Time_duration.Duration);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L243"
        if ((_keepAlive > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L244"
            stdgo._internal.net.Net__setkeepalive._setKeepAlive(_fd, true);
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L245"
            stdgo._internal.net.Net__setkeepaliveperiod._setKeepAlivePeriod(_fd, _keepAlive);
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L246"
            if (_keepAliveHook != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L247"
                _keepAliveHook(_keepAlive);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L250"
        return (stdgo.Go.setRef((new stdgo._internal.net.Net_tcpconn.TCPConn((new stdgo._internal.net.Net_t_conn.T_conn(_fd) : stdgo._internal.net.Net_t_conn.T_conn)) : stdgo._internal.net.Net_tcpconn.TCPConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpconndottcpconn.__type__stdgodot_internaldotnetdotNet_tcpconndotTCPConn })) : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
    }
