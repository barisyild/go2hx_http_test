package stdgo._internal.net.http.httptrace;
import stdgo._internal.context.Context;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo_static_extension.DNSDoneInfo_static_extension) @:using(stdgo._internal.net.http.httptrace.Httptrace_dnsdoneinfo_static_extension.DNSDoneInfo_static_extension) class DNSDoneInfo {
    public var addrs : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr> = (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var coalesced : Bool = false;
    public function new(?addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>, ?err:stdgo.Error, ?coalesced:Bool) {
        if (addrs != null) this.addrs = addrs;
        if (err != null) this.err = err;
        if (coalesced != null) this.coalesced = coalesced;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "addrs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr }) }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "coalesced", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new DNSDoneInfo(addrs, err, coalesced);
    }
}
