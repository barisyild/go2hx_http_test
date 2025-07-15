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
function _internetSocket(_ctx:stdgo._internal.context.Context_context.Context, _net:stdgo.GoString, _laddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _raddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _sotype:stdgo.GoInt, _proto:stdgo.GoInt, _mode:stdgo.GoString, _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } {
        var _fd = (null : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L138"
        if (((false && _mode == (("dial" : stdgo.GoString)) : Bool) && _raddr._isWildcard() : Bool)) {
            _raddr = _raddr._toLocal(_net?.__copy__());
        };
        var __tmp__ = stdgo._internal.net.Net__favoriteaddrfamily._favoriteAddrFamily(_net?.__copy__(), _laddr, _raddr, _mode?.__copy__()), _family:stdgo.GoInt = __tmp__._0, _ipv6only:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L142"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__socket._socket(_ctx, _net?.__copy__(), _family, _sotype, _proto, _ipv6only, _laddr, _raddr, _ctrlCtxFn);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
