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
function _ipAddrsEface(_addrs:stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>):stdgo.Slice<stdgo.AnyInterface> {
        var _s = (new stdgo.Slice<stdgo.AnyInterface>((_addrs.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L402"
        if (_addrs != null) for (_i => _v in _addrs) {
            _s[(_i : stdgo.GoInt)] = new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_ipaddrdotipaddr.__type__stdgodot_internaldotnetdotNet_ipaddrdotIPAddr));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/lookup.go#L405"
        return _s;
    }
