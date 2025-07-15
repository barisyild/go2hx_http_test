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
@:structInit @:using(stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension) @:using(stdgo._internal.net.Net_t_netfd_static_extension.T_netFD_static_extension) class T_netFD {
    @:embedded
    public var _fakeNetFD : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD> = (null : stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>);
    public var _family : stdgo.GoInt = 0;
    public var _sotype : stdgo.GoInt = 0;
    public var _net : stdgo.GoString = "";
    public var _laddr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var _raddr : stdgo._internal.net.Net_addr.Addr = (null : stdgo._internal.net.Net_addr.Addr);
    public var _pfd : stdgo._internal.internal.poll.Poll_fd.FD = ({} : stdgo._internal.internal.poll.Poll_fd.FD);
    public var _isConnected : Bool = false;
    public function new(?_fakeNetFD:stdgo.Ref<stdgo._internal.net.Net_t_fakenetfd.T_fakeNetFD>, ?_family:stdgo.GoInt, ?_sotype:stdgo.GoInt, ?_net:stdgo.GoString, ?_laddr:stdgo._internal.net.Net_addr.Addr, ?_raddr:stdgo._internal.net.Net_addr.Addr, ?_pfd:stdgo._internal.internal.poll.Poll_fd.FD, ?_isConnected:Bool) {
        if (_fakeNetFD != null) this._fakeNetFD = _fakeNetFD;
        if (_family != null) this._family = _family;
        if (_sotype != null) this._sotype = _sotype;
        if (_net != null) this._net = _net;
        if (_laddr != null) this._laddr = _laddr;
        if (_raddr != null) this._raddr = _raddr;
        if (_pfd != null) this._pfd = _pfd;
        if (_isConnected != null) this._isConnected = _isConnected;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fakeNetFD", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_fakenetfddott_fakenetfd.__type__stdgodot_internaldotnetdotNet_t_fakenetfddotT_fakeNetFD }) }, optional : false }, { name : "_family", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_sotype", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_net", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_laddr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr }, optional : false }, { name : "_raddr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr }, optional : false }, { name : "_pfd", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_fddotfd.__type__stdgodot_internaldotinternaldotpolldotPoll_fddotFD }, optional : false }, { name : "_isConnected", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check32 this._fakeNetFD.close;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD.read;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this._fakeNetFD.setWriteDeadline;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD.write;
    public var _accept(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__accept():() -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._accept;
    public var _closeRead(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__closeRead():() -> stdgo.Error return @:check32 this._fakeNetFD._closeRead;
    public var _closeWrite(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__closeWrite():() -> stdgo.Error return @:check32 this._fakeNetFD._closeWrite;
    public var _connect(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__connect():(stdgo._internal.context.Context_context.Context, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._connect;
    public var _dup(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__dup():() -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._dup;
    public var _readFrom(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readFrom():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._readFrom;
    public var _readFromInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readFromInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._readFromInet4;
    public var _readFromInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readFromInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._readFromInet6;
    public var _readMsg(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readMsg():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsg;
    public var _readMsgInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readMsgInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsgInet4;
    public var _readMsgInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__readMsgInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:check32 this._fakeNetFD._readMsgInet6;
    public var _writeMsg(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeMsg():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsg;
    public var _writeMsgInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeMsgInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsgInet4;
    public var _writeMsgInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeMsgInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:check32 this._fakeNetFD._writeMsgInet6;
    public var _writeTo(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeTo():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.syscall.Syscall_sockaddr.Sockaddr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeTo;
    public var _writeToInet4(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeToInet4():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeToInet4;
    public var _writeToInet6(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__writeToInet6():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this._fakeNetFD._writeToInet6;
    public function __copy__() {
        return new T_netFD(_fakeNetFD, _family, _sotype, _net, _laddr, _raddr, _pfd, _isConnected);
    }
}
