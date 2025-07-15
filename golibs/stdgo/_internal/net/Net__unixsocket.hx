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
function _unixSocket(_ctx:stdgo._internal.context.Context_context.Context, _net:stdgo.GoString, _laddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _raddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _mode:stdgo.GoString, _ctxCtrlFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } {
        var _sotype:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L18"
        {
            final __value__ = _net;
            if (__value__ == (("unix" : stdgo.GoString))) {
                _sotype = (1 : stdgo.GoInt);
            } else if (__value__ == (("unixgram" : stdgo.GoString))) {
                _sotype = (2 : stdgo.GoInt);
            } else if (__value__ == (("unixpacket" : stdgo.GoString))) {
                _sotype = (4 : stdgo.GoInt);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L26"
                return { _0 : null, _1 : stdgo.Go.asInterface((_net : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L29"
        {
            final __value__ = _mode;
            if (__value__ == (("dial" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L31"
                if (((_laddr != null) && _laddr._isWildcard() : Bool)) {
                    _laddr = (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L34"
                if (((_raddr != null) && _raddr._isWildcard() : Bool)) {
                    _raddr = (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L37"
                if (((_raddr == null) && (((_sotype != (2 : stdgo.GoInt)) || (_laddr == null) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L38"
                    return { _0 : null, _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
                };
            } else if (__value__ == (("listen" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L42"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_((("unknown mode: " : stdgo.GoString) + _mode?.__copy__() : stdgo.GoString)?.__copy__()) };
            };
        };
        var __tmp__ = stdgo._internal.net.Net__socket._socket(_ctx, _net?.__copy__(), (1 : stdgo.GoInt), _sotype, (0 : stdgo.GoInt), false, _laddr, _raddr, _ctxCtrlFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L46"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L47"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L49"
        return { _0 : _fd, _1 : (null : stdgo.Error) };
    }
