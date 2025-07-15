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
class T_sysListener_asInterface {
    @:keep
    public dynamic function _listenUnixgram(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixconn.UnixConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenUnixgram(_ctx, _laddr);
    @:keep
    public dynamic function _listenUnix(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_unixaddr.UnixAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_unixlistener.UnixListener>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenUnix(_ctx, _laddr);
    @:keep
    public dynamic function _listenMulticastUDP(_ctx:stdgo._internal.context.Context_context.Context, _ifi:stdgo.Ref<stdgo._internal.net.Net_interface.Interface>, _gaddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenMulticastUDP(_ctx, _ifi, _gaddr);
    @:keep
    public dynamic function _listenUDP(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_udpaddr.UDPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_udpconn.UDPConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenUDP(_ctx, _laddr);
    @:keep
    public dynamic function _listenTCPProto(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, _proto:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenTCPProto(_ctx, _laddr, _proto);
    @:keep
    public dynamic function _listenTCP(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenTCP(_ctx, _laddr);
    @:keep
    public dynamic function _listenMPTCP(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_tcplistener.TCPListener>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenMPTCP(_ctx, _laddr);
    @:keep
    public dynamic function _listenIP(_ctx:stdgo._internal.context.Context_context.Context, _laddr:stdgo.Ref<stdgo._internal.net.Net_ipaddr.IPAddr>):{ var _0 : stdgo.Ref<stdgo._internal.net.Net_ipconn.IPConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._listenIP(_ctx, _laddr);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setMultipathTCP(_0:Bool):Void @:_0 __self__.value.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function multipathTCP():Bool return @:_0 __self__.value.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function listenPacket(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return @:_0 __self__.value.listenPacket(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function listen(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return @:_0 __self__.value.listen(_0, _1, _2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_syslistenerpointer.T_sysListenerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
