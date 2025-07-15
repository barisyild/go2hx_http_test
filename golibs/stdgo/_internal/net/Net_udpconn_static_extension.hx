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
@:keep @:allow(stdgo._internal.net.Net.UDPConn_asInterface) class UDPConn_static_extension {
    @:keep
    @:tdfield
    static public function _writeMsgAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L180"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected && _addr.isValid() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L181"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L183"
        if ((!(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected && !_addr.isValid() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L184"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L187"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__addrporttosockaddrinet4._addrPortToSockaddrInet4(_addr?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L190"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L191"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _n = __tmp__._0;
                        _oobn = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L193"
                return ({
                    @:explicitConversion final __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeMsgInet4(_b, _oob, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
                    { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
                });
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__addrporttosockaddrinet6._addrPortToSockaddrInet6(_addr?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L196"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L197"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                        _n = __tmp__._0;
                        _oobn = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L199"
                return ({
                    @:explicitConversion final __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeMsgInet6(_b, _oob, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
                    { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
                });
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L201"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid address family" : stdgo.GoString), addr : (_addr.addr().string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                    _n = __tmp__._0;
                    _oobn = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeMsg( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L166"
        if (((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected && ({
            final value = _addr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L167"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L169"
        if ((!(@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected && ({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L170"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = _addr._sockaddr((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family), _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L173"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L174"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L176"
        return ({
            @:explicitConversion final __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeMsg(_b, _oob, _sa);
            { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
        });
    }
    @:keep
    @:tdfield
    static public function _writeToAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L140"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L141"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L143"
        if (!_addr.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L144"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L147"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__addrporttosockaddrinet4._addrPortToSockaddrInet4(_addr?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L150"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L151"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L153"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeToInet4(_b, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__addrporttosockaddrinet6._addrPortToSockaddrInet6(_addr?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L156"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L157"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L159"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeToInet6(_b, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L161"
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid address family" : stdgo.GoString), addr : (_addr.addr().string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L114"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L115"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L117"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L118"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L121"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__iptosockaddrinet4._ipToSockaddrInet4((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP, (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port), _sa:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L124"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L125"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L127"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeToInet4(_b, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = stdgo._internal.net.Net__iptosockaddrinet6._ipToSockaddrInet6((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP, (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port, (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zone?.__copy__()), _sa:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L130"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L131"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L133"
                return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeToInet6(_b, (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L135"
                return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid address family" : stdgo.GoString), addr : ((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.string() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readMsg( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L98"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var _sa:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readMsgInet4(_b, _oob, (0 : stdgo.GoInt), (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
                    _n = @:tmpset0 __tmp__._0;
                    _oobn = @:tmpset0 __tmp__._1;
                    _flags = @:tmpset0 __tmp__._2;
                    _err = @:tmpset0 __tmp__._3;
                };
                var _ip = @:assignType (stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4(_sa.addr?.__copy__())?.__copy__() : stdgo._internal.net.netip.Netip_addr.Addr);
                _addr = stdgo._internal.net.netip.Netip_addrportfrom.addrPortFrom(_ip?.__copy__(), (_sa.port : stdgo.GoUInt16))?.__copy__();
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _sa:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readMsgInet6(_b, _oob, (0 : stdgo.GoInt), (stdgo.Go.setRef(_sa, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
                    _n = @:tmpset0 __tmp__._0;
                    _oobn = @:tmpset0 __tmp__._1;
                    _flags = @:tmpset0 __tmp__._2;
                    _err = @:tmpset0 __tmp__._3;
                };
                var _ip = @:assignType (stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(_sa.addr?.__copy__()).withZone(stdgo._internal.net.Net__zonecache._zoneCache._name((_sa.zoneId : stdgo.GoInt))?.__copy__())?.__copy__() : stdgo._internal.net.netip.Netip_addr.Addr);
                _addr = stdgo._internal.net.netip.Netip_addrportfrom.addrPortFrom(_ip?.__copy__(), (_sa.port : stdgo.GoUInt16))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L110"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function _readFromAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _addr = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort), _err = (null : stdgo.Error);
        var _ip:stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
        var _port:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L75"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var _from:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFromInet4(_b, (stdgo.Go.setRef(_from, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L79"
                if (_err == null) {
                    _ip = stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4(_from.addr?.__copy__())?.__copy__();
                    _port = _from.port;
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _from:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFromInet6(_b, (stdgo.Go.setRef(_from, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L86"
                if (_err == null) {
                    _ip = stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(_from.addr?.__copy__()).withZone(stdgo._internal.net.Net__zonecache._zoneCache._name((_from.zoneId : stdgo.GoInt))?.__copy__())?.__copy__();
                    _port = _from.port;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L91"
        if (_err == null) {
            _addr = stdgo._internal.net.netip.Netip_addrportfrom.addrPortFrom(_ip?.__copy__(), (_port : stdgo.GoUInt16))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L94"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } = { _0 : _n, _1 : _addr?.__copy__(), _2 : _err };
            _n = __tmp__._0;
            _addr = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L49"
        {
            final __value__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family;
            if (__value__ == ((2 : stdgo.GoInt))) {
                var _from:stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFromInet4(_b, (stdgo.Go.setRef(_from, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L53"
                if (_err == null) {
                    var _ip = _from.addr?.__copy__();
                    {
                        var __tmp__ = ({ iP : (_ip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), port : _from.port } : stdgo._internal.net.Net_udpaddr.UDPAddr);
                        var x = (_addr : stdgo._internal.net.Net_udpaddr.UDPAddr);
                        x.iP = __tmp__?.iP;
                        x.port = __tmp__?.port;
                        x.zone = __tmp__?.zone;
                    };
                };
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                var _from:stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6 = ({} : stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6);
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFromInet6(_b, (stdgo.Go.setRef(_from, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L60"
                if (_err == null) {
                    var _ip = _from.addr?.__copy__();
                    {
                        var __tmp__ = ({ iP : (_ip.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), port : _from.port, zone : stdgo._internal.net.Net__zonecache._zoneCache._name((_from.zoneId : stdgo.GoInt))?.__copy__() } : stdgo._internal.net.Net_udpaddr.UDPAddr);
                        var x = (_addr : stdgo._internal.net.Net_udpaddr.UDPAddr);
                        x.iP = __tmp__?.iP;
                        x.port = __tmp__?.port;
                        x.zone = __tmp__?.zone;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L65"
        if (_err != null) {
            _addr = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock_posix.go#L69"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeMsgUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L271"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L272"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            var __tmp__ = _c._writeMsgAddrPort(_b, _oob, _addr?.__copy__());
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L275"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : stdgo.Go.asInterface((new stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr(_addr?.__copy__()) : stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_addrportudpaddrdott_addrportudpaddr.__type__stdgodot_internaldotnetdotNet_t_addrportudpaddrdotT_addrPortUDPAddr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L278"
        return { _0 : _n, _1 : _oobn, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeMsgUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L259"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L260"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            var __tmp__ = _c._writeMsg(_b, _oob, _addr);
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L263"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L266"
        return { _0 : _n, _1 : _oobn, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L236"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L237"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _addr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _1 : false };
        }, _a = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L240"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L241"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr, err : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = _c._writeTo(_b, _a), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L244"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _a._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L247"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeToUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.netip.Netip_addrport.AddrPort):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L224"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L225"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._writeToAddrPort(_b, _addr?.__copy__()), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L228"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : stdgo.Go.asInterface((new stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr(_addr?.__copy__()) : stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_addrportudpaddrdott_addrportudpaddr.__type__stdgodot_internaldotnetdotNet_t_addrportudpaddrdotT_addrPortUDPAddr), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L231"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeToUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L212"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L213"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._writeTo(_b, _addr), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L216"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L219"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readMsgUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L200"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L201"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _4 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort), _4 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _flags = __tmp__._2;
                _addr = __tmp__._3;
                _err = __tmp__._4;
                __tmp__;
            };
        };
        {
            var __tmp__ = _c._readMsg(_b, _oob);
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _flags = @:tmpset0 __tmp__._2;
            _addr = @:tmpset0 __tmp__._3?.__copy__();
            _err = @:tmpset0 __tmp__._4;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L204"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L207"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function readMsgUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _err = (null : stdgo.Error);
        var _ap:stdgo._internal.net.netip.Netip_addrport.AddrPort = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort);
        {
            var __tmp__ = _c.readMsgUDPAddrPort(_b, _oob);
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _flags = @:tmpset0 __tmp__._2;
            _ap = @:tmpset0 __tmp__._3?.__copy__();
            _err = @:tmpset0 __tmp__._4;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L192"
        if (_ap.isValid()) {
            _addr = stdgo._internal.net.Net_udpaddrfromaddrport.uDPAddrFromAddrPort(_ap?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L195"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function readFromUDPAddrPort( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _addr = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L172"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L173"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                _n = __tmp__._0;
                _addr = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        {
            var __tmp__ = _c._readFromAddrPort(_b);
            _n = @:tmpset0 __tmp__._0;
            _addr = @:tmpset0 __tmp__._1?.__copy__();
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L176"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L179"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _2 : stdgo.Error; } = { _0 : _n, _1 : _addr?.__copy__(), _2 : _err };
            _n = __tmp__._0;
            _addr = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var __tmp__ = _c._readFromUDP(_b, (stdgo.Go.setRef((new stdgo._internal.net.Net_udpaddr.UDPAddr() : stdgo._internal.net.Net_udpaddr.UDPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>)), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L159"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L161"
            return { _0 : _n, _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L163"
        return { _0 : _n, _1 : stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })), _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _readFromUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L146"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L147"
            return { _0 : (0 : stdgo.GoInt), _1 : null, _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_b, _addr), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L150"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L153"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readFromUDP( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        var _n = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L141"
        return _c._readFromUDP(_b, (stdgo.Go.setRef((new stdgo._internal.net.Net_udpaddr.UDPAddr() : stdgo._internal.net.Net_udpaddr.UDPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_udpaddrdotudpaddr.__type__stdgodot_internaldotnetdotNet_udpaddrdotUDPAddr })) : stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>));
    }
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L129"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L130"
            return { _0 : (null : stdgo._internal.syscall.Syscall_rawconn.RawConn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L132"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__newrawconn._newRawConn((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd);
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawconndott_rawconn.__type__stdgodot_internaldotnetdotNet_t_rawconndotT_rawConn })), _1 : __tmp__._1 };
        });
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_udpconn.UDPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_udpconn.UDPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_udpconn.UDPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_udpconn.UDPConn):stdgo.Error return @:_5 __self__.close();
}
