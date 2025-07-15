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
@:keep @:allow(stdgo._internal.net.Net.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    @:tdfield
    static public function file( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        var _f = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd._dup();
            _f = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L296"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("file" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L299"
        return { _0 : _f, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function setWriteBuffer( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _bytes:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L278"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L279"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L281"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setwritebuffer._setWriteBuffer((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd, _bytes) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L282"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L284"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadBuffer( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _bytes:stdgo.GoInt):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L266"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L267"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L269"
        {
            var _err = @:assignType (stdgo._internal.net.Net__setreadbuffer._setReadBuffer((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd, _bytes) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L270"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L272"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L254"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L255"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L257"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.setWriteDeadline(_t?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L258"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L260"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L243"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L244"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L246"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.setReadDeadline(_t?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L247"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L249"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setDeadline( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _t:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L232"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L233"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L235"
        {
            var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.setDeadline(_t?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L236"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("set" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L238"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function remoteAddr( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L224"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L225"
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L227"
        return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr;
    }
    @:keep
    @:tdfield
    static public function localAddr( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo._internal.net.Net_addr.Addr {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L214"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L215"
            return (null : stdgo._internal.net.Net_addr.Addr);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L217"
        return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr;
    }
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L200"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L201"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        var _err = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.close() : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L204"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("close" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L207"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L188"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L189"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.write(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L192"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L195"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L176"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L177"
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno) };
        };
        var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd.read(_b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L180"
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
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L183"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _ok( _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L170"
        return (({
            final value = _c;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool);
    }
}
