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
@:keep @:allow(stdgo._internal.net.Net.T_sysDialer_asInterface) class T_sysDialer_static_extension {
    @:keep
    @:tdfield
    static public function _dialUnix( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var _ctrlCtxFn = @:assignType ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L159"
        if (((_ctrlCtxFn == null) && ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control != null) : Bool)) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L161"
                return (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__unixsocket._unixSocket(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })), stdgo.Go.asInterface(_raddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })), ("dial" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L165"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L166"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L168"
        return { _0 : stdgo._internal.net.Net__newunixconn._newUnixConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dialUDP( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var _ctrlCtxFn = @:assignType ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L207"
        if (((_ctrlCtxFn == null) && ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control != null) : Bool)) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L209"
                return (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })), stdgo.Go.asInterface(_raddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })), (2 : stdgo.GoInt), (0 : stdgo.GoInt), ("dial" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L213"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L214"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L216"
        return { _0 : stdgo._internal.net.Net__newudpconn._newUDPConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _doDialTCPProto( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _proto:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var _ctrlCtxFn = @:assignType ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L73"
        if (((_ctrlCtxFn == null) && ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control != null) : Bool)) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L75"
                return (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })), stdgo.Go.asInterface(_raddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })), (1 : stdgo.GoInt), _proto, ("dial" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L104"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((((_i < (2 : stdgo.GoInt) : Bool) && ((({
                final value = _laddr;
                (value == null || (value : Dynamic).__nil__);
            }) || ((@:checkr _laddr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port == (0 : stdgo.GoInt)) : Bool)) : Bool) && ((stdgo._internal.net.Net__selfconnect._selfConnect(_fd, _err) || stdgo._internal.net.Net__spuriousenotavail._spuriousENOTAVAIL(_err) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L105"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L106"
                    _fd.close();
                };
{
                    var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })), stdgo.Go.asInterface(_raddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })), (1 : stdgo.GoInt), _proto, ("dial" : stdgo.GoString), _ctrlCtxFn);
                    _fd = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L111"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L112"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L114"
        return { _0 : stdgo._internal.net.Net__newtcpconn._newTCPConn(_fd, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.keepAlive, stdgo._internal.net.Net__testhooksetkeepalive._testHookSetKeepAlive), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _doDialTCP( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L68"
        return _sd._doDialTCPProto(_ctx, _laddr, _raddr, (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _dialTCP( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L58"
        {
            var _h = (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._testHookDialTCP;
            if (_h != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L59"
                return _h(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), _laddr, _raddr);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L61"
        {
            var _h = stdgo._internal.net.Net__testhookdialtcp._testHookDialTCP;
            if (_h != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L62"
                return _h(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), _laddr, _raddr);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L64"
        return _sd._doDialTCP(_ctx, _laddr, _raddr);
    }
    @:keep
    @:tdfield
    static public function _dialMPTCP( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        //"file:///Users/o/.go/go1.21.3/src/net/mptcpsock_stub.go#L14"
        return _sd._dialTCP(_ctx, _laddr, _raddr);
    }
    @:keep
    @:tdfield
    static public function _dialIP( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>, _raddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var __tmp__ = stdgo._internal.net.Net__parsenetwork._parseNetwork(_ctx, (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), true), _network:stdgo.GoString = __tmp__._0, _proto:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L117"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L118"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L120"
        {
            final __value__ = _network;
            if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L123"
                return { _0 : null, _1 : stdgo.Go.asInterface(((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            };
        };
        var _ctrlCtxFn = @:assignType ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.controlContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.syscall.Syscall_rawconn.RawConn) -> stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L126"
        if (((_ctrlCtxFn == null) && ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control != null) : Bool)) {
            _ctrlCtxFn = function(_cxt:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString, _c:stdgo._internal.syscall.Syscall_rawconn.RawConn):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L128"
                return (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.control(_network?.__copy__(), _address?.__copy__(), _c);
            };
        };
        var __tmp__ = stdgo._internal.net.Net__internetsocket._internetSocket(_ctx, _network?.__copy__(), stdgo.Go.asInterface(_laddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })), stdgo.Go.asInterface(_raddr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })), (3 : stdgo.GoInt), _proto, ("dial" : stdgo.GoString), _ctrlCtxFn), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L132"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L133"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L135"
        return { _0 : stdgo._internal.net.Net__newipconn._newIPConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _dialSingle( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _ra:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _c = (null : stdgo._internal.net.Net_conn.Conn), _err = (null : stdgo.Error);
        try {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey() : stdgo._internal.internal.nettrace.Nettrace_tracekey.TraceKey), _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracekeydottracekey.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracekeydotTraceKey))), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotnettracedotnettrace_tracedottrace.__type__stdgodot_internaldotinternaldotnettracedotNettrace_tracedotTrace })) : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.internal.nettrace.Nettrace_trace.Trace>), _1 : false };
            }, _trace = __tmp__._0, __3 = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L633"
            if (({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _raStr = @:assignType ((_ra.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L635"
                if ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectStart != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L636"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectStart((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), _raStr?.__copy__());
                };
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L638"
                if ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectDone != null) {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L639"
                                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connectDone((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), _raStr?.__copy__(), _err);
                            };
                            a();
                        }) });
                    };
                };
            };
            var _la = @:assignType ((@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.localAddr : stdgo._internal.net.Net_addr.Addr);
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L643"
            {
                final __type__ = _ra;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }))) {
                    var _ra:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) : __type__.__underlying__().value);
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _la;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })) : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>), _1 : false };
                    }, _la = __tmp__._0, __4 = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L646"
                    if (_sd.multipathTCP()) {
                        {
                            var __tmp__ = _sd._dialMPTCP(_ctx, _la, _ra);
                            _c = stdgo.Go.asInterface(@:tmpset0 __tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpconndottcpconn.__type__stdgodot_internaldotnetdotNet_tcpconndotTCPConn }));
                            _err = @:tmpset0 __tmp__._1;
                        };
                    } else {
                        {
                            var __tmp__ = _sd._dialTCP(_ctx, _la, _ra);
                            _c = stdgo.Go.asInterface(@:tmpset0 __tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpconndottcpconn.__type__stdgodot_internaldotnetdotNet_tcpconndotTCPConn }));
                            _err = @:tmpset0 __tmp__._1;
                        };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr }))) {
                    var _ra:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>) : __type__.__underlying__().value);
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _la;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : false };
                    }, _la = __tmp__._0, __4 = __tmp__._1;
                    {
                        var __tmp__ = _sd._dialUDP(_ctx, _la, _ra);
                        _c = stdgo.Go.asInterface(@:tmpset0 __tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpconndotudpconn.__type__stdgodot_internaldotnetdotNet_udpconndotUDPConn }));
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }))) {
                    var _ra:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>) : __type__.__underlying__().value);
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _la;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : false };
                    }, _la = __tmp__._0, __4 = __tmp__._1;
                    {
                        var __tmp__ = _sd._dialIP(_ctx, _la, _ra);
                        _c = stdgo.Go.asInterface(@:tmpset0 __tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipconndotipconn.__type__stdgodot_internaldotnetdotNet_ipconndotIPConn }));
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr }))) {
                    var _ra:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>) : __type__.__underlying__().value);
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _la;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _1 : false };
                    }, _la = __tmp__._0, __4 = __tmp__._1;
                    {
                        var __tmp__ = _sd._dialUnix(_ctx, _la, _ra);
                        _c = stdgo.Go.asInterface(@:tmpset0 __tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixconndotunixconn.__type__stdgodot_internaldotnetdotNet_unixconndotUnixConn }));
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    var _ra:stdgo._internal.net.Net_addr.Addr = __type__ == null ? (null : stdgo._internal.net.Net_addr.Addr) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L661"
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), source : _la, addr : _ra, err : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("unexpected address type" : stdgo.GoString), addr : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._address?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
                            _c = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _c = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L663"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L664"
                {
                    final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), source : _la, addr : _ra, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
                        _c = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _c = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L666"
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : _c, _1 : (null : stdgo.Error) };
                    _c = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _c = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _c, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _c, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dialSerial( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _ras:stdgo._internal.net.Net_t_addrlist.T_addrList):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _firstErr:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L590"
            if (_ras != null) for (_i => _ra in _ras) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L591"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _ctx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L593"
                                    return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), source : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.localAddr, addr : _ra, err : stdgo._internal.net.Net__maperr._mapErr(_ctx.err()) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
                var _dialCtx = @:assignType (_ctx : stdgo._internal.context.Context_context.Context);
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L598"
                {
                    var __tmp__ = _ctx.deadline(), _deadline:stdgo._internal.time.Time_time.Time = __tmp__._0, _hasDeadline:Bool = __tmp__._1;
                    if (_hasDeadline) {
                        var __tmp__ = stdgo._internal.net.Net__partialdeadline._partialDeadline(stdgo._internal.time.Time_now.now()?.__copy__(), _deadline?.__copy__(), ((_ras.length) - _i : stdgo.GoInt)), _partialDeadline:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L600"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L602"
                            if (_firstErr == null) {
                                _firstErr = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), source : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialer.localAddr, addr : _ra, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L605"
                            break;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L607"
                        if (_partialDeadline.before(_deadline?.__copy__())) {
                            var _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
                            {
                                var __tmp__ = stdgo._internal.context.Context_withdeadline.withDeadline(_ctx, _partialDeadline?.__copy__());
                                _dialCtx = @:tmpset0 __tmp__._0;
                                _cancel = @:tmpset0 __tmp__._1;
                            };
                            {
                                final __f__ = _cancel;
                                __deferstack__.unshift({ ran : false, f : () -> __f__() });
                            };
                        };
                    };
                };
                var __tmp__ = _sd._dialSingle(_dialCtx, _ra), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L615"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L616"
                    {
                        final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : _c, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L618"
                if (_firstErr == null) {
                    _firstErr = _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L623"
            if (_firstErr == null) {
                _firstErr = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("dial" : stdgo.GoString), net : (@:checkr _sd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._network?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (null : stdgo._internal.net.Net_addr.Addr), err : stdgo._internal.net.Net__errmissingaddress._errMissingAddress } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L626"
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _firstErr };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dialParallel( _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer>, _ctx:stdgo._internal.context.Context_context.Context, _primaries:stdgo._internal.net.Net_t_addrlist.T_addrList, _fallbacks:stdgo._internal.net.Net_t_addrlist.T_addrList):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _sd:stdgo.Ref<stdgo._internal.net.Net_t_sysdialer.T_sysDialer> = _sd;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L514"
            if ((_fallbacks.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L515"
                return _sd._dialSerial(_ctx, _primaries);
            };
            var _returned = (new stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>(0, () -> ({  } : stdgo._internal.net.Net_t__struct_18.T__struct_18)) : stdgo.Chan<stdgo._internal.net.Net_t__struct_18.T__struct_18>);
            {
                var _a0 = _returned;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            {};
            var _results = (new stdgo.Chan<stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967>(0, () -> ({} : stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967)) : stdgo.Chan<stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967>);
            var _startRacer = @:assignType (function(_ctx:stdgo._internal.context.Context_context.Context, _primary:Bool):Void {
                var _ras = @:assignType (_primaries : stdgo._internal.net.Net_t_addrlist.T_addrList);
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L531"
                if (!_primary) {
                    _ras = _fallbacks;
                };
                var __tmp__ = _sd._dialSerial(_ctx, _ras), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L535"
                {
                    var __select__ = true;
                    var __c__0 = _results;
var __c__1 = null;
                    while (__select__) {
                        if (_results != null && __c__0.__isSend__(true)) {
                            __select__ = false;
                            {
                                __c__0.__send__(({ conn : _c, _error : _err, _primary : _primary, _done : true } : stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967));
                                {};
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _returned;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L538"
                                    if (_c != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L539"
                                        _c.close();
                                    };
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
            } : (stdgo._internal.context.Context_context.Context, Bool) -> Void);
            var _primary:stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967 = ({} : stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967), _fallback:stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967 = ({} : stdgo._internal.net.Net_t__dialparallel___localname___dialresult_15967.T__dialParallel___localname___dialResult_15967);
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _primaryCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _primaryCancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _primaryCancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L549"
            {
                final __tmp__0 = _primaryCtx;
final __tmp__1 = true;
                stdgo.Go.routine(() -> _startRacer(__tmp__0, __tmp__1));
            };
            var _fallbackTimer = stdgo._internal.time.Time_newtimer.newTimer(_sd._fallbackDelay());
            {
                final __f__ = _fallbackTimer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L555"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L556"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _fallbackTimer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _fallbackCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _fallbackCancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
                                    {
                                        final __f__ = _fallbackCancel;
                                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L560"
                                    {
                                        final __tmp__0 = _fallbackCtx;
final __tmp__1 = false;
                                        stdgo.Go.routine(() -> _startRacer(__tmp__0, __tmp__1));
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _results;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _res = __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L563"
                                    if (_res._error == null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L564"
                                        {
                                            final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : _res.conn, _1 : (null : stdgo.Error) };
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L566"
                                    if (_res._primary) {
                                        _primary = _res?.__copy__();
                                    } else {
                                        _fallback = _res?.__copy__();
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L571"
                                    if ((_primary._done && _fallback._done : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L572"
                                        {
                                            final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _primary._error };
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L574"
                                    if ((_res._primary && _fallbackTimer.stop() : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L579"
                                        _fallbackTimer.reset((0i64 : stdgo._internal.time.Time_duration.Duration));
                                    };
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _resolver( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:_5 __self__._resolver();
    @:embedded
    @:embeddededffieldsffun
    public static function _fallbackDelay( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._fallbackDelay();
    @:embedded
    @:embeddededffieldsffun
    public static function _dualStack( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool return @:_5 __self__._dualStack();
    @:embedded
    @:embeddededffieldsffun
    public static function _deadline( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time return @:_5 __self__._deadline(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function setMultipathTCP( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:Bool):Void return @:_5 __self__.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function multipathTCP( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer):Bool return @:_5 __self__.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public static function dialContext( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.dialContext(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function dial( __self__:stdgo._internal.net.Net_t_sysdialer.T_sysDialer, _0:stdgo.GoString, _1:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.dial(_0, _1);
}
