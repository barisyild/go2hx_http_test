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
function _newRawListener(_fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L95"
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.net.Net_t_rawlistener.T_rawListener(({ _fd : _fd } : stdgo._internal.net.Net_t_rawconn.T_rawConn)) : stdgo._internal.net.Net_t_rawlistener.T_rawListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawlistenerdott_rawlistener.__type__stdgodot_internaldotnetdotNet_t_rawlistenerdotT_rawListener })) : stdgo.Ref<stdgo._internal.net.Net_t_rawlistener.T_rawListener>), _1 : (null : stdgo.Error) };
    }
