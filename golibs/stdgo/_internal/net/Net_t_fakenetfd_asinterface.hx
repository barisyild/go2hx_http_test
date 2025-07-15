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
class T_fakeNetFD_asInterface {
    @:keep
    public dynamic function _dup():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value._dup();
    @:keep
    public dynamic function _writeMsg(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsg(_p, _oob, _sa);
    @:keep
    public dynamic function _writeToInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeToInet6(_p, _sa);
    @:keep
    public dynamic function _writeToInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeToInet4(_p, _sa);
    @:keep
    public dynamic function _writeTo(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._writeTo(_p, _sa);
    @:keep
    public dynamic function _writeMsgInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsgInet6(_p, _oob, _sa);
    @:keep
    public dynamic function _writeMsgInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value._writeMsgInet4(_p, _oob, _sa);
    @:keep
    public dynamic function _readMsgInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._readMsgInet6(_p, _oob, _flags, _sa);
    @:keep
    public dynamic function _readMsgInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._readMsgInet4(_p, _oob, _flags, _sa);
    @:keep
    public dynamic function _readMsg(_p:stdgo.Slice<stdgo.GoUInt8>, _oob:stdgo.Slice<stdgo.GoUInt8>, _flags:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoInt; var _3 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _4 : stdgo.Error; } return @:_0 __self__.value._readMsg(_p, _oob, _flags);
    @:keep
    public dynamic function _readFromInet6(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet6.SockaddrInet6>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readFromInet6(_p, _sa);
    @:keep
    public dynamic function _readFromInet4(_p:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Ref<stdgo._internal.syscall.Syscall_sockaddrinet4.SockaddrInet4>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readFromInet4(_p, _sa);
    @:keep
    public dynamic function _readFrom(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _2 : stdgo.Error; } return @:_0 __self__.value._readFrom(_p);
    @:keep
    public dynamic function _connect(_ctx:stdgo._internal.context.Context_context.Context, _la:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr, _ra:stdgo._internal.syscall.Syscall_sockaddr.Sockaddr):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:_0 __self__.value._connect(_ctx, _la, _ra);
    @:keep
    public dynamic function setWriteDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_t);
    @:keep
    public dynamic function setReadDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_t);
    @:keep
    public dynamic function setDeadline(_t:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_t);
    @:keep
    public dynamic function _accept():{ var _0 : stdgo.Ref<stdgo._internal.net.Net_t_netfd.T_netFD>; var _1 : stdgo.Error; } return @:_0 __self__.value._accept();
    @:keep
    public dynamic function _closeWrite():stdgo.Error return @:_0 __self__.value._closeWrite();
    @:keep
    public dynamic function _closeRead():stdgo.Error return @:_0 __self__.value._closeRead();
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_fakenetfdpointer.T_fakeNetFDPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
