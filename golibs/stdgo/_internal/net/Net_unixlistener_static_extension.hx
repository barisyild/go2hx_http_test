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
@:keep @:allow(stdgo._internal.net.Net.UnixListener_asInterface) class UnixListener_static_extension {
    @:keep
    @:tdfield
    static public function setUnlinkOnClose( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>, _unlink:Bool):Void {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unlink = _unlink;
    }
    @:keep
    @:tdfield
    static public function _file( _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _ln;
        var __tmp__ = (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd._dup(), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L201"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L202"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L204"
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _close( _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):stdgo.Error {
        @:recv var _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _ln;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L191"
        (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unlinkOnce.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L192"
            if ((((@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) && (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unlink : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L193"
                stdgo._internal.syscall.Syscall_unlink.unlink((@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._path?.__copy__());
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L196"
        return (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.close();
    }
    @:keep
    @:tdfield
    static public function _accept( _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } {
        @:recv var _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _ln;
        var __tmp__ = (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd._accept(), _fd:stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L173"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L174"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock_posix.go#L176"
        return { _0 : stdgo._internal.net.Net__newunixconn._newUnixConn(_fd), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function file( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L304"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L305"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
                _f = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = _l._file();
            _f = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L308"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("file" : stdgo.GoString), net : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L311"
        return { _0 : _f, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function setDeadline( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L287"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L288"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L290"
        {
            var _err = @:assignType ((@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pfd.setDeadline(_t?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L291"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L293"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function addr( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L282"
        return (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr;
    }
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L270"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L271"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L273"
        {
            var _err = @:assignType (_l._close() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L274"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L276"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function accept( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L257"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L258"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _l._accept(), _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L261"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L262"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("accept" : stdgo.GoString), net : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L264"
        return { _0 : stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unixconndotunixconn.__type__stdgodot_internaldotnetdotNet_unixconndotUnixConn })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function acceptUnix( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L244"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L245"
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = _l._accept(), _c:stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L248"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L249"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("accept" : stdgo.GoString), net : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L251"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function syscallConn( _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L235"
        if (!_l._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L236"
            return { _0 : (null : stdgo._internal.syscall.Syscall_rawconn.RawConn), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L238"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.net.Net__newrawlistener._newRawListener((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd);
            { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_rawlistenerdott_rawlistener.__type__stdgodot_internaldotnetdotNet_t_rawlistenerdotT_rawListener })), _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function _ok( _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>):Bool {
        @:recv var _ln:stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener> = _ln;
        //"file:///Users/o/.go/go1.21.3/src/net/unixsock.go#L227"
        return (({
            final value = _ln;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr _ln ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool);
    }
}
