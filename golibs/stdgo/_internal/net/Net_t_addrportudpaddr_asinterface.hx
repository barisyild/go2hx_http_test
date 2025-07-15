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
class T_addrPortUDPAddr_asInterface {
    @:keep
    public dynamic function network():stdgo.GoString return @:_0 __self__.value.network();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unmarshalText(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalText(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function unmarshalBinary(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function port():stdgo.GoUInt16 return @:_0 __self__.value.port();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function marshalText():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalText();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function isValid():Bool return @:_0 __self__.value.isValid();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function appendTo(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.appendTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function addr():stdgo._internal.net.netip.Netip_addr.Addr return @:_0 __self__.value.addr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_addrportudpaddrpointer.T_addrPortUDPAddrPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
