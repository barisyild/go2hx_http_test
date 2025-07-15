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
@:keep @:allow(stdgo._internal.net.Net.TCPConn_asInterface) class TCPConn_static_extension {
    @:keep
    @:tdfield
    static public function _readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L48"
        {
            var __tmp__ = stdgo._internal.net.Net__splice._splice((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1, _handled:Bool = __tmp__._2;
            if (_handled) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L49"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L51"
        {
            var __tmp__ = stdgo._internal.net.Net__sendfile._sendFile((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1, _handled:Bool = __tmp__._2;
            if (_handled) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L52"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock_posix.go#L54"
        return stdgo._internal.net.Net__genericreadfrom._genericReadFrom(stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpconndottcpconn.__type__stdgodot_internaldotnetdotNet_tcpconndotTCPConn })), _r);
    }
    @:keep
    @:tdfield
    static public function multipathTCP( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L232"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L233"
            return { _0 : false, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L235"
        return { _0 : stdgo._internal.net.Net__isusingmultipathtcp._isUsingMultipathTCP((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function setNoDelay( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _noDelay:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L213"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L214"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L216"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setnodelay._setNoDelay((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _noDelay) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L217"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L219"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setKeepAlivePeriod( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _d:stdgo._internal.time.Time_duration.Duration):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L199"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L200"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L202"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setkeepaliveperiod._setKeepAlivePeriod((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _d) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L203"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L205"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setKeepAlive( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _keepalive:Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L188"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L189"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L191"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setkeepalive._setKeepAlive((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _keepalive) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L192"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L194"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setLinger( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _sec:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L176"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L177"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L179"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setlinger._setLinger((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd, _sec) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L180"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L182"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function closeWrite( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L152"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L153"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L155"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._closeWrite() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L156"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L158"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function closeRead( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L140"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L141"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L143"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd._closeRead() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L144"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L146"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function readFrom( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L127"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L128"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _c._readFrom(_r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L131"
        if (((_err != null) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("readfrom" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L134"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function syscallConn( _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L119"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L120"
            return { _0 : (null : stdgo._internal.syscall.Syscall_rawconn.RawConn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/tcpsock.go#L122"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__newrawconn._newRawConn((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._fd);
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawconndott_rawconn.__type__stdgodot_internaldotnetdotNet_t_rawconndotT_rawConn })), _1 : __tmp__._1 };
        });
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_tcpconn.TCPConn, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_tcpconn.TCPConn):stdgo.Error return @:_5 __self__.close();
}
