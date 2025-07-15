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
class T_addrList_asInterface {
    @:keep
    public dynamic function _partition(_strategy:stdgo._internal.net.Net_addr.Addr -> Bool):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo._internal.net.Net_t_addrlist.T_addrList; } return @:_0 __self__.value._partition(_strategy);
    @:keep
    public dynamic function _first(_strategy:stdgo._internal.net.Net_addr.Addr -> Bool):stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value._first(_strategy);
    @:keep
    public dynamic function _forResolve(_network:stdgo.GoString, _addr:stdgo.GoString):stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value._forResolve(_network, _addr);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_addrlistpointer.T_addrListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
