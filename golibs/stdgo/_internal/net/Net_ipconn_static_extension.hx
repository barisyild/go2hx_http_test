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
@:keep @:allow(stdgo._internal.net.Net.IPConn_asInterface) class IPConn_static_extension {
    @:keep
    @:tdfield
    static public function _writeMsg( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L102"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L103"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L105"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L106"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = _addr._sockaddr((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family), _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L109"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L110"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : _err };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L112"
        return ({
            @:explicitConversion final __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeMsg(_b, _oob, _sa);
            { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
        });
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L88"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L89"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L91"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L92"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
        };
        var __tmp__ = _addr._sockaddr((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._family), _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L95"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L96"
            return { _0 : (0 : stdgo.GoInt), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L98"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeTo(_b, _sa);
    }
    @:keep
    @:tdfield
    static public function _readMsg( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _err = (null : stdgo.Error);
        var _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr);
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readMsg(_b, _oob, (0 : stdgo.GoInt));
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _flags = @:tmpset0 __tmp__._2;
            _sa = @:tmpset0 __tmp__._3;
            _err = @:tmpset0 __tmp__._4;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L78"
        {
            final __type__ = _sa;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__().value);
                _addr = (stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__().value);
                _addr = (stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), zone : stdgo._internal.net.Net__zonecache._zoneCache._name(((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zoneId : stdgo.GoInt))?.__copy__() } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L84"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function _readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        var _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L50"
        {
            final __type__ = _sa;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet4dotsockaddrinet4.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet4dotSockaddrInet4 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) : __type__.__underlying__().value);
                _addr = (stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
                _n = stdgo._internal.net.Net__stripipv4header._stripIPv4Header(_n, _b);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrinet6dotsockaddrinet6.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrinet6dotSockaddrInet6 }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) : __type__.__underlying__().value);
                _addr = (stdgo.Go.setRef(({ iP : ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), zone : stdgo._internal.net.Net__zonecache._zoneCache._name(((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).zoneId : stdgo.GoInt))?.__copy__() } : stdgo._internal.net.Net_ipaddr.IPAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock_posix.go#L57"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L192"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L193"
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
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L196"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L199"
        return { _0 : _n, _1 : _oobn, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L171"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L172"
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
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : false };
        }, _a = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L175"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L176"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr, err : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = _c._writeTo(_b, _a), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L179"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _a._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L182"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeToIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L159"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L160"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._writeTo(_b, _addr), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L163"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L166"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readMsgIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L147"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L148"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _4 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : null, _4 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
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
            _addr = @:tmpset0 __tmp__._3;
            _err = @:tmpset0 __tmp__._4;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L151"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L154"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L126"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L127"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L130"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L133"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L134"
            return { _0 : _n, _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L136"
        return { _0 : _n, _1 : stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })), _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readFromIP( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L114"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L115"
            return { _0 : (0 : stdgo.GoInt), _1 : null, _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L118"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L121"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L106"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L107"
            return { _0 : (null : stdgo._internal.syscall.Syscall_rawconn.RawConn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/iprawsock.go#L109"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__newrawconn._newRawConn((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd);
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawconndott_rawconn.__type__stdgodot_internaldotnetdotNet_t_rawconndotT_rawConn })), _1 : __tmp__._1 };
        });
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_ipconn.IPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_ipconn.IPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_ipconn.IPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_ipconn.IPConn):stdgo.Error return @:_5 __self__.close();
}
