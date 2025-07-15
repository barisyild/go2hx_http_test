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
class Dialer_asInterface {
    @:keep
    public dynamic function dialContext(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dialContext(_ctx, _network, _address);
    @:keep
    public dynamic function dial(_network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value.dial(_network, _address);
    @:keep
    public dynamic function setMultipathTCP(_use:Bool):Void @:_0 __self__.value.setMultipathTCP(_use);
    @:keep
    public dynamic function multipathTCP():Bool return @:_0 __self__.value.multipathTCP();
    @:keep
    public dynamic function _fallbackDelay():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._fallbackDelay();
    @:keep
    public dynamic function _resolver():stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:_0 __self__.value._resolver();
    @:keep
    public dynamic function _deadline(_ctx:stdgo._internal.context.Context_context.Context, _now:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time return @:_0 __self__.value._deadline(_ctx, _now);
    @:keep
    public dynamic function _dualStack():Bool return @:_0 __self__.value._dualStack();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_dialerpointer.DialerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
