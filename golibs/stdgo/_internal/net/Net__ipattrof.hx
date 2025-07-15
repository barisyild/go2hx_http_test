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
function _ipAttrOf(_ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.Net_t_ipattr.T_ipAttr {
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L67"
        if (!_ip.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L68"
            return (new stdgo._internal.net.Net_t_ipattr.T_ipAttr() : stdgo._internal.net.Net_t_ipattr.T_ipAttr);
        };
        var _match = @:assignType (stdgo._internal.net.Net__rfc6724policytable._rfc6724policyTable.classify(_ip?.__copy__())?.__copy__() : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry);
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L71"
        return ({ scope : stdgo._internal.net.Net__classifyscope._classifyScope(_ip?.__copy__()), precedence : _match.precedence, label : _match.label } : stdgo._internal.net.Net_t_ipattr.T_ipAttr);
    }
