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
function _newIPConn(_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>):stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> {
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L202"
        return (stdgo.Go.setRef((new stdgo._internal.net.Net_ipconn.IPConn((new stdgo._internal.net.Net_t_conn.T_conn(_fd) : stdgo._internal.net.Net_t_conn.T_conn)) : stdgo._internal.net.Net_ipconn.IPConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipconndotipconn.__type__stdgodot_internaldotnetdotNet_ipconndotIPConn })) : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>);
    }
