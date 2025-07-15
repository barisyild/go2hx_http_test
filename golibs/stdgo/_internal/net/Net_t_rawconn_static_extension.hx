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
@:keep @:allow(stdgo._internal.net.Net.T_rawConn_asInterface) class T_rawConn_static_extension {
    @:keep
    @:tdfield
    static public function pollFD( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>):stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD> {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L72"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L73"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L75"
        return (stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pfd, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_fddotfd.__type__stdgodot_internaldotinternaldotpolldotPoll_fddotFD })) : stdgo.Ref<stdgo._internal.internal.poll.Poll_fd.FD>);
    }
    @:keep
    @:tdfield
    static public function write( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L53"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L54"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pfd.rawWrite(_f) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L57"
        stdgo._internal.runtime.Runtime_keepalive.keepAlive(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }))));
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L58"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("raw-write" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L61"
        return _err;
    }
    @:keep
    @:tdfield
    static public function read( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Bool):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L41"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L42"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pfd.rawRead(_f) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L45"
        stdgo._internal.runtime.Runtime_keepalive.keepAlive(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }))));
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L46"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("raw-read" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._raddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L49"
        return _err;
    }
    @:keep
    @:tdfield
    static public function control( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>, _f:stdgo.GoUIntptr -> Void):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L29"
        if (!_c._ok()) {
            //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L30"
            return stdgo.Go.asInterface((new stdgo.GoUIntptr(22) : stdgo._internal.syscall.Syscall_errno.Errno), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_errnodoterrno.__type__stdgodot_internaldotsyscalldotSyscall_errnodotErrno);
        };
        var _err = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pfd.rawControl(_f) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L33"
        stdgo._internal.runtime.Runtime_keepalive.keepAlive(new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_netfddott_netfd.__type__stdgodot_internaldotnetdotNet_t_netfddotT_netFD }))));
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L34"
        if (_err != null) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("raw-control" : stdgo.GoString), net : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._net?.__copy__(), source : (null : stdgo._internal.net.Net_addr.Addr), addr : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._laddr, err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L37"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _ok( _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.Net_t_rawconn.T_rawConn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/rawconn.go#L26"
        return (({
            final value = _c;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fd;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool);
    }
}
