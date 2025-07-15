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
class Resolver_asInterface {
    @:keep
    public dynamic function _lookup(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _qtype:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, _conf:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value._lookup(_ctx, _name, _qtype, _conf);
    @:keep
    public dynamic function _lookupAddr(_ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupAddr(_ctx, _addr);
    @:keep
    public dynamic function _lookupTXT(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupTXT(_ctx, _name);
    @:keep
    public dynamic function _lookupNS(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupNS(_ctx, _name);
    @:keep
    public dynamic function _lookupMX(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupMX(_ctx, _name);
    @:keep
    public dynamic function _lookupSRV(_ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value._lookupSRV(_ctx, _service, _proto, _name);
    @:keep
    public dynamic function _lookupCNAME(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupCNAME(_ctx, _name);
    @:keep
    public dynamic function _lookupPort(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupPort(_ctx, _network, _service);
    @:keep
    public dynamic function _lookupIP(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupIP(_ctx, _network, _host);
    @:keep
    public dynamic function _lookupHost(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupHost(_ctx, _host);
    @:keep
    public dynamic function _goLookupTXT(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupTXT(_ctx, _name);
    @:keep
    public dynamic function _goLookupNS(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupNS(_ctx, _name);
    @:keep
    public dynamic function _goLookupMX(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupMX(_ctx, _name);
    @:keep
    public dynamic function _goLookupSRV(_ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value._goLookupSRV(_ctx, _service, _proto, _name);
    @:keep
    public dynamic function _dial(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _server:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value._dial(_ctx, _network, _server);
    @:keep
    public dynamic function lookupAddr(_ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupAddr(_ctx, _addr);
    @:keep
    public dynamic function lookupTXT(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupTXT(_ctx, _name);
    @:keep
    public dynamic function lookupNS(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNS(_ctx, _name);
    @:keep
    public dynamic function lookupMX(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupMX(_ctx, _name);
    @:keep
    public dynamic function lookupSRV(_ctx:stdgo._internal.context.Context_context.Context, _service:stdgo.GoString, _proto:stdgo.GoString, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value.lookupSRV(_ctx, _service, _proto, _name);
    @:keep
    public dynamic function lookupCNAME(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupCNAME(_ctx, _host);
    @:keep
    public dynamic function lookupPort(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupPort(_ctx, _network, _service);
    @:keep
    public dynamic function _lookupIPAddr(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupIPAddr(_ctx, _network, _host);
    @:keep
    public dynamic function lookupNetIP(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNetIP(_ctx, _network, _host);
    @:keep
    public dynamic function lookupIP(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIP(_ctx, _network, _host);
    @:keep
    public dynamic function lookupIPAddr(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIPAddr(_ctx, _host);
    @:keep
    public dynamic function lookupHost(_ctx:stdgo._internal.context.Context_context.Context, _host:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupHost(_ctx, _host);
    @:keep
    public dynamic function _getLookupGroup():stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> return @:_0 __self__.value._getLookupGroup();
    @:keep
    public dynamic function _strictErrors():Bool return @:_0 __self__.value._strictErrors();
    @:keep
    public dynamic function _preferGo():Bool return @:_0 __self__.value._preferGo();
    @:keep
    public dynamic function _internetAddrList(_ctx:stdgo._internal.context.Context_context.Context, _net:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_0 __self__.value._internetAddrList(_ctx, _net, _addr);
    @:keep
    public dynamic function _resolveAddrList(_ctx:stdgo._internal.context.Context_context.Context, _op:stdgo.GoString, _network:stdgo.GoString, _addr:stdgo.GoString, _hint:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_0 __self__.value._resolveAddrList(_ctx, _op, _network, _addr, _hint);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_resolverpointer.ResolverPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
