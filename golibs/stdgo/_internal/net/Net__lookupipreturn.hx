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
function _lookupIPReturn(_addrsi:stdgo.AnyInterface, _err:stdgo.Error, _shared:Bool):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L387"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L388"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>), _1 : _err };
        };
        var _addrs = (stdgo.Go.typeAssert(_addrsi, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr })) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L391"
        if (_shared) {
            var _clone = (new stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>((_addrs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_addrs.length : stdgo.GoInt).toBasic() > 0 ? (_addrs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.Net_ipaddr.IPAddr)]) : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>);
            //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L393"
            _clone.__copyTo__(_addrs);
            _addrs = _clone;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L396"
        return { _0 : _addrs, _1 : (null : stdgo.Error) };
    }
