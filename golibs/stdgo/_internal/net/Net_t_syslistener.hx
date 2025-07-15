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
@:structInit @:using(stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension) @:using(stdgo._internal.net.Net_t_syslistener_static_extension.T_sysListener_static_extension) class T_sysListener {
    @:embedded
    public var listenConfig : stdgo._internal.net.Net_listenconfig.ListenConfig = ({} : stdgo._internal.net.Net_listenconfig.ListenConfig);
    public var _network : stdgo.GoString = "";
    public var _address : stdgo.GoString = "";
    public function new(?listenConfig:stdgo._internal.net.Net_listenconfig.ListenConfig, ?_network:stdgo.GoString, ?_address:stdgo.GoString) {
        if (listenConfig != null) this.listenConfig = listenConfig;
        if (_network != null) this._network = _network;
        if (_address != null) this._address = _address;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "listenConfig", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenconfigdotlistenconfig.__type__stdgodot_internaldotnetdotNet_listenconfigdotListenConfig }, optional : false }, { name : "_network", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_address", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public var listen(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_listen():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return @:check32 this.listenConfig.listen;
    public var listenPacket(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_listenPacket():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return @:check32 this.listenConfig.listenPacket;
    public var multipathTCP(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> Bool return @:check32 this.listenConfig.multipathTCP;
    public var setMultipathTCP(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setMultipathTCP():Bool -> Void return @:check32 this.listenConfig.setMultipathTCP;
    public function __copy__() {
        return new T_sysListener(listenConfig, _network, _address);
    }
}
