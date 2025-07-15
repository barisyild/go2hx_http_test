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
function _favoriteAddrFamily(_network:stdgo.GoString, _laddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _raddr:stdgo._internal.net.Net_t_sockaddr.T_sockaddr, _mode:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _family = (0 : stdgo.GoInt), _ipv6only = false;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L113"
        {
            final __value__ = _network[((_network.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if (__value__ == ((52 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L115"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (2 : stdgo.GoInt), _1 : false };
                    _family = __tmp__._0;
                    _ipv6only = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((54 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L117"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (3 : stdgo.GoInt), _1 : true };
                    _family = __tmp__._0;
                    _ipv6only = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L120"
        if (((_mode == ("listen" : stdgo.GoString)) && (((_laddr == null) || _laddr._isWildcard() : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L121"
            if ((stdgo._internal.net.Net__supportsipv4map._supportsIPv4map() || !stdgo._internal.net.Net__supportsipv4._supportsIPv4() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L122"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (3 : stdgo.GoInt), _1 : false };
                    _family = __tmp__._0;
                    _ipv6only = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L124"
            if (_laddr == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L125"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (2 : stdgo.GoInt), _1 : false };
                    _family = __tmp__._0;
                    _ipv6only = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L127"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _laddr._family(), _1 : false };
                _family = __tmp__._0;
                _ipv6only = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L130"
        if (((((_laddr == null) || (_laddr._family() == (2 : stdgo.GoInt)) : Bool)) && (((_raddr == null) || (_raddr._family() == (2 : stdgo.GoInt)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L132"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (2 : stdgo.GoInt), _1 : false };
                _family = __tmp__._0;
                _ipv6only = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock_posix.go#L134"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (3 : stdgo.GoInt), _1 : false };
            _family = __tmp__._0;
            _ipv6only = __tmp__._1;
            __tmp__;
        };
    }
