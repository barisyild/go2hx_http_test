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
@:structInit @:using(stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension) @:using(stdgo._internal.net.Net_ipnet_static_extension.IPNet_static_extension) class IPNet {
    public var iP : stdgo._internal.net.Net_ip.IP = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP);
    public var mask : stdgo._internal.net.Net_ipmask.IPMask = (new stdgo._internal.net.Net_ipmask.IPMask(0, 0) : stdgo._internal.net.Net_ipmask.IPMask);
    public function new(?iP:stdgo._internal.net.Net_ip.IP, ?mask:stdgo._internal.net.Net_ipmask.IPMask) {
        if (iP != null) this.iP = iP;
        if (mask != null) this.mask = mask;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "iP", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipdotip.__type__stdgodot_internaldotnetdotNet_ipdotIP }, optional : false }, { name : "mask", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipmaskdotipmask.__type__stdgodot_internaldotnetdotNet_ipmaskdotIPMask }, optional : false }])));
    public function __copy__() {
        return new IPNet(iP, mask);
    }
}
