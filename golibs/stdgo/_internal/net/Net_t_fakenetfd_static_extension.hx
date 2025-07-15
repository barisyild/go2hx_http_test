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
@:keep @:allow(stdgo._internal.net.Net.T_fakeNetFD_asInterface) class T_fakeNetFD_static_extension {
    @:keep
    @:tdfield
    static public function _dup( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L405"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _f = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeMsg( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L401"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeToInet6( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L397"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeToInet4( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L393"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeTo( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L389"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeMsgInet6( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L385"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _writeMsgInet4( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L381"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readMsgInet6( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _retflags = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L377"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _retflags = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readMsgInet4( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _retflags = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L373"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _retflags = __tmp__._2;
            _err = __tmp__._3;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readMsg( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _oobn = (0 : stdgo.GoInt), _retflags = (0 : stdgo.GoInt), _sa = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L369"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : (0 : stdgo.GoInt), _3 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _4 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _oobn = __tmp__._1;
            _retflags = __tmp__._2;
            _sa = __tmp__._3;
            _err = __tmp__._4;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readFromInet6( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L365"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readFromInet4( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L361"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _readFrom( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _sa = (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L357"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _2 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
            _n = __tmp__._0;
            _sa = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _connect( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _ctx:stdgo._internal.context.Context_context.Context, _la:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, _ra:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L353"
        return { _0 : (null : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(38) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L248"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.setWriteDeadline(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L249"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L243"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.setReadDeadline(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L244"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setDeadline( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L237"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.setReadDeadline(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L238"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.setWriteDeadline(_t?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L239"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _accept( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var __tmp__ = (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._incoming.__smartGet__(), _c = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L230"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L231"
            return { _0 : null, _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L233"
        return { _0 : _c, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _closeWrite( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L224"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.close();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L225"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _closeRead( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L219"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.close();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L220"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>):stdgo.Error {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L196"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closedMu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L197"
        if ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L198"
            (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closedMu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L199"
            return (null : stdgo.Error);
        };
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L202"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closedMu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L204"
        if (new stdgo.AnyInterface((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listener, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_fakenetaddrdott_fakenetaddr.__type__stdgodot_internaldotnetdotNet_t_fakenetaddrdotT_fakeNetAddr)) != new stdgo.AnyInterface(((new stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr() : stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr)), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_fakenetaddrdott_fakenetaddr.__type__stdgodot_internaldotnetdotNet_t_fakenetaddrdotT_fakeNetAddr))) {
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L205"
            stdgo._internal.net.Net__listenersmu._listenersMu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L206"
            if (stdgo._internal.net.Net__listeners._listeners != null) stdgo._internal.net.Net__listeners._listeners.__remove__((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listener);
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L207"
            if ((@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._incoming != null) (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._incoming.__close__();
            (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._listener = (new stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr() : stdgo._internal.net.Net_t_fakenetaddr.T_fakeNetAddr);
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L209"
            stdgo._internal.net.Net__listenersmu._listenersMu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L210"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L213"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.close();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L214"
        (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.close();
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L215"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _nn = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L192"
        return (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(_p);
    }
    @:keep
    @:tdfield
    static public function read( _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _fd:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = _fd;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net_fake.go#L188"
        return (@:checkr _fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_p);
    }
}
