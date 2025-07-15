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
@:structInit @:using(stdgo._internal.net.Net_t_byrfc6724_static_extension.T_byRFC6724_static_extension) @:using(stdgo._internal.net.Net_t_byrfc6724_static_extension.T_byRFC6724_static_extension) class T_byRFC6724 {
    public var _addrs : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr> = (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
    public var _addrAttr : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr> = (null : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
    public var _srcs : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr> = (null : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>);
    public var _srcAttr : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr> = (null : stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
    public function new(?_addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>, ?_addrAttr:stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>, ?_srcs:stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>, ?_srcAttr:stdgo.Slice<stdgo._internal.net.Net_t_ipattr.T_ipAttr>) {
        if (_addrs != null) this._addrs = _addrs;
        if (_addrAttr != null) this._addrAttr = _addrAttr;
        if (_srcs != null) this._srcs = _srcs;
        if (_srcAttr != null) this._srcAttr = _srcAttr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_addrs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }) }, optional : false }, { name : "_addrAttr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr }) }, optional : false }, { name : "_srcs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrdotaddr.__type__stdgodot_internaldotnetdotnetipdotNetip_addrdotAddr }) }, optional : false }, { name : "_srcAttr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr }) }, optional : false }])));
    public function __copy__() {
        return new T_byRFC6724(_addrs, _addrAttr, _srcs, _srcAttr);
    }
}
