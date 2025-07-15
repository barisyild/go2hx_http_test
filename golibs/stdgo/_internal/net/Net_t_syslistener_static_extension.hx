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
@:keep @:allow(stdgo._internal.net.Net.T_sysListener_asInterface) class T_sysListener_static_extension {
    @:keep
    @:tdfield
    static public function _listenUnixgram( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L235"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L237"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__unixsocket._unixSocket(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L241"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L242"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L244"
        return { _0 : stdgo._internal.net.Net__newunixconn._newUnixConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _listenUnix( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L221"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L223"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__unixsocket._unixSocket(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L227"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L228"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L230"
        return { _0 : (stdgo.Go.setRef(({ _fd : _fd, _path : ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr.string() : stdgo.GoString)?.__copy__(), _unlink : true } : stdgo._internal.net.Net_unixlistener.UnixListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixlistenerdotunixlistener.__type__stdgodot_internaldotnetdotNet_unixlistenerdotUnixListener })) : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _listenMulticastUDP( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface>, _gaddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L235"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L237"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_gaddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), (2 : stdgo.GoInt), (0 : stdgo.GoInt), ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L241"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L242"
            return { _0 : null, _1 : _err };
        };
        var _c = stdgo._internal.net.Net__newudpconn._newUDPConn(_fd);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L245"
        {
            var _ip4 = @:assignType ((@:checkr _gaddr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L246"
                {
                    var _err = @:assignType (stdgo._internal.net.Net__listenipv4multicastudp._listenIPv4MulticastUDP(_c, _ifi, _ip4) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L247"
                        _c.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L248"
                        return { _0 : null, _1 : _err };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L251"
                {
                    var _err = @:assignType (stdgo._internal.net.Net__listenipv6multicastudp._listenIPv6MulticastUDP(_c, _ifi, (@:checkr _gaddr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L252"
                        _c.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L253"
                        return { _0 : null, _1 : _err };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L256"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _listenUDP( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L221"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L223"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), (2 : stdgo.GoInt), (0 : stdgo.GoInt), ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L227"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L228"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L230"
        return { _0 : stdgo._internal.net.Net__newudpconn._newUDPConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _listenTCPProto( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _proto:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L177"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L179"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), (1 : stdgo.GoInt), _proto, ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L183"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L184"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L186"
        return { _0 : (stdgo.Go.setRef(({ _fd : _fd, _lc : (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig?.__copy__() } : stdgo._internal.net.Net_tcplistener.TCPListener), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcplistenerdottcplistener.__type__stdgodot_internaldotnetdotNet_tcplistenerdotTCPListener })) : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _listenTCP( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L172"
        return _sl._listenTCPProto(_ctx, _laddr, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _listenMPTCP( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        //"file:///Users/o/.go/go1.21.3/src/net/mptcpsock_stub.go#L18"
        return _sl._listenTCP(_ctx, _laddr);
    }
    @:keep
    @:tdfield
    static public function _listenIP( _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } {
        @:recv var _sl:stdgo.Ref<stdgo._internal.net.Net_t_syslistener.T_sysListener> = _sl;
        var __tmp__ = stdgo._internal.net.Net__parsenetwork._parseNetwork(_ctx, (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), true), _network:stdgo.GoString = __tmp__._0, _proto:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L140"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L141"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L143"
        {
            final __value__ = _network;
            if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L146"
                return { _0 : null, _1 : stdgo.Go.asInterface(((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        var _ctrlCtxFn:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error = null;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L149"
        if ((@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control != null) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L151"
                return (@:checkr _sl ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listenConfig.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, _network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })), (null : stdgo._internal.net.Net_t_sockaddr.T_sockaddr), (3 : stdgo.GoInt), _proto, ("listen" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L155"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L156"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L158"
        return { _0 : stdgo._internal.net.Net__newipconn._newIPConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function setMultipathTCP( __self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:Bool):Void return @:_5 __self__.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function multipathTCP( __self__:stdgo._internal.net.Net_t_syslistener.T_sysListener):Bool return @:_5 __self__.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public static function listenPacket( __self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return @:_5 __self__.listenPacket(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function listen( __self__:stdgo._internal.net.Net_t_syslistener.T_sysListener, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return @:_5 __self__.listen(_0, _1, _2);
}
