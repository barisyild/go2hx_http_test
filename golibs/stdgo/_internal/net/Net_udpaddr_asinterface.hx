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
class UDPAddr_asInterface {
    @:keep
    public dynamic function _toLocal(_net:stdgo.GoString):stdgo._internal.net.Net_t_sockaddr.T_sockaddr return @:_0 __self__.value._toLocal(_net);
    @:keep
    public dynamic function _sockaddr(_family:stdgo.GoInt):{ var _0 : stdgo._internal.syscall.Syscall_sockaddr.Sockaddr; var _1 : stdgo.Error; } return @:_0 __self__.value._sockaddr(_family);
    @:keep
    public dynamic function _family():stdgo.GoInt return @:_0 __self__.value._family();
    @:keep
    public dynamic function _opAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value._opAddr();
    @:keep
    public dynamic function _isWildcard():Bool return @:_0 __self__.value._isWildcard();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function network():stdgo.GoString return @:_0 __self__.value.network();
    @:keep
    public dynamic function addrPort():stdgo._internal.net.netip.Netip_addrport.AddrPort return @:_0 __self__.value.addrPort();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_udpaddrpointer.UDPAddrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
