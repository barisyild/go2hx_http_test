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
@:structInit @:using(stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension) @:using(stdgo._internal.net.Net_t_sysdialer_static_extension.T_sysDialer_static_extension) class T_sysDialer {
    @:embedded
    public var dialer : stdgo._internal.net.Net_dialer.Dialer = ({} : stdgo._internal.net.Net_dialer.Dialer);
    public var _network : stdgo.GoString = "";
    public var _address : stdgo.GoString = "";
    public var _testHookDialTCP : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; } = null;
    public function new(?dialer:stdgo._internal.net.Net_dialer.Dialer, ?_network:stdgo.GoString, ?_address:stdgo.GoString, ?_testHookDialTCP:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>, stdgo.Ref<stdgo._internal.net.Net_tcpaddr.TCPAddr>) -> { var _0 : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>; var _1 : stdgo.Error; }) {
        if (dialer != null) this.dialer = dialer;
        if (_network != null) this._network = _network;
        if (_address != null) this._address = _address;
        if (_testHookDialTCP != null) this._testHookDialTCP = _testHookDialTCP;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "dialer", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_dialerdotdialer.__type__stdgodot_internaldotnetdotNet_dialerdotDialer }, optional : false }, { name : "_network", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_address", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_testHookDialTCP", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpaddrdottcpaddr.__type__stdgodot_internaldotnetdotNet_tcpaddrdotTCPAddr })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_tcpconndottcpconn.__type__stdgodot_internaldotnetdotNet_tcpconndotTCPConn }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public var dial(get, never) : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_dial():(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dial;
    public var dialContext(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_dialContext():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check32 this.dialer.dialContext;
    public var multipathTCP(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> Bool return @:check32 this.dialer.multipathTCP;
    public var setMultipathTCP(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setMultipathTCP():Bool -> Void return @:check32 this.dialer.setMultipathTCP;
    public var _deadline(get, never) : (stdgo._internal.context.Context_context.Context, stdgo._internal.time.Time_time.Time) -> stdgo._internal.time.Time_time.Time;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__deadline():(stdgo._internal.context.Context_context.Context, stdgo._internal.time.Time_time.Time) -> stdgo._internal.time.Time_time.Time return @:check32 this.dialer._deadline;
    public var _dualStack(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__dualStack():() -> Bool return @:check32 this.dialer._dualStack;
    public var _fallbackDelay(get, never) : () -> stdgo._internal.time.Time_duration.Duration;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__fallbackDelay():() -> stdgo._internal.time.Time_duration.Duration return @:check32 this.dialer._fallbackDelay;
    public var _resolver(get, never) : () -> stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__resolver():() -> stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> return @:check32 this.dialer._resolver;
    public function __copy__() {
        return new T_sysDialer(dialer, _network, _address, _testHookDialTCP);
    }
}
