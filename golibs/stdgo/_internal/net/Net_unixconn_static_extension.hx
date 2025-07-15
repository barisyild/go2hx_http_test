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
@:keep @:allow(stdgo._internal.net.Net.UnixConn_asInterface) class UnixConn_static_extension {
    @:keep
    @:tdfield
    static public function _writeMsg( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L144"
        if ((((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype == (2 : stdgo.GoInt)) && (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L145"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
                _n = __tmp__._0;
                _oobn = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L148"
        if (({
            final value = _addr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L149"
            if ((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).net != (stdgo._internal.net.Net__sotypetonet._sotypeToNet((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype))) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L150"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(97) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                    _n = __tmp__._0;
                    _oobn = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _sa = new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() } : stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix })));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L154"
        return ({
            @:explicitConversion final __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeMsg(_b, _oob, _sa);
            { _0 : __tmp__._0, _1 : __tmp__._1, _2 : __tmp__._2 };
        });
    }
    @:keep
    @:tdfield
    static public function _writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L130"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isConnected) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L131"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net_errwritetoconnected.errWriteToConnected };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L133"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L134"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.Net__errmissingaddress._errMissingAddress };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L136"
        if ((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).net != (stdgo._internal.net.Net__sotypetonet._sotypeToNet((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype))) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L137"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(97) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var _sa = (stdgo.Go.setRef(({ name : (@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__() } : stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix })) : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L140"
        return (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._writeTo(_b, new stdgo.AnyInterface(stdgo.Go.asInterface(_sa, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix }))));
    }
    @:keep
    @:tdfield
    static public function _readMsg( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _err = (null : stdgo.Error);
        var _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr);
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readMsg(_b, _oob, (0 : stdgo.GoInt));
            _n = @:tmpset0 __tmp__._0;
            _oobn = @:tmpset0 __tmp__._1;
            _flags = @:tmpset0 __tmp__._2;
            _sa = @:tmpset0 __tmp__._3;
            _err = @:tmpset0 __tmp__._4;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L116"
        if (((true && _err == null : Bool) && (_oobn > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L117"
            stdgo._internal.net.Net__setreadmsgcloseonexec._setReadMsgCloseOnExec((_oob.__slice__(0, _oobn) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L120"
        {
            final __type__ = _sa;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L122"
                if ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ((stdgo.Go.str() : stdgo.GoString))) {
                    _addr = (stdgo.Go.setRef(({ name : (@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__(), net : stdgo._internal.net.Net__sotypetonet._sotypeToNet((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype)?.__copy__() } : stdgo._internal.net.Net_unixaddr.UnixAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L126"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function _readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        var _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L104"
        {
            final __type__ = _sa;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sockaddrunixdotsockaddrunix.__type__stdgodot_internaldotsyscalldotSyscall_sockaddrunixdotSockaddrUnix }))) {
                var _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrunix.SockaddrUnix>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L106"
                if ((@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name != ((stdgo.Go.str() : stdgo.GoString))) {
                    _addr = (stdgo.Go.setRef(({ name : (@:checkr _sa ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name?.__copy__(), net : stdgo._internal.net.Net__sotypetonet._sotypeToNet((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sotype)?.__copy__() } : stdgo._internal.net.Net_unixaddr.UnixAddr), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L110"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeMsgUnix( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L185"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L186"
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
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L189"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L192"
        return { _0 : _n, _1 : _oobn, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L164"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L165"
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
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })) : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _1 : false };
        }, _a = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L168"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L169"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr, err : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        var __tmp__ = _c._writeTo(_b, _a), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L172"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _a._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L175"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeToUnix( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L152"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L153"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._writeTo(_b, _addr), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L156"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : _addr._opAddr(), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L159"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function readMsgUnix( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _4 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _flags = (0 : stdgo.GoInt), _addr = (null : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L140"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L141"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _4 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : null, _4 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
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
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L144"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L147"
        return { _0 : _n, _1 : _oobn, _2 : _flags, _3 : _addr, _4 : _err };
    }
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L119"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L120"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L123"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L126"
        if (({
            final value = _addr;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L127"
            return { _0 : _n, _1 : (null : stdgo._internal.net.Net_addr.Addr), _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L129"
        return { _0 : _n, _1 : stdgo.Go.asInterface(_addr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixaddrdotunixaddr.__type__stdgodot_internaldotnetdotNet_unixaddrdotUnixAddr })), _2 : _err };
    }
    @:keep
    @:tdfield
    static public function readFromUnix( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L107"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L108"
            return { _0 : (0 : stdgo.GoInt), _1 : null, _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_b), _n:stdgo.GoInt = __tmp__._0, _addr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L111"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L114"
        return { _0 : _n, _1 : _addr, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L96"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L97"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L99"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._closeWrite() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L100"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L102"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function closeRead( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L84"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L85"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L87"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._closeRead() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L88"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L90"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L75"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L76"
            return { _0 : (null : stdgo._internal.syscall.Syscall_rawconn.RawConn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L78"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__newrawconn._newRawConn((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd);
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawconndott_rawconn.__type__stdgodot_internaldotnetdotNet_t_rawconndotT_rawConn })), _1 : __tmp__._1 };
        });
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_unixconn.UnixConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_unixconn.UnixConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_unixconn.UnixConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_unixconn.UnixConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_unixconn.UnixConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_unixconn.UnixConn):stdgo.Error return @:_5 __self__.close();
}
