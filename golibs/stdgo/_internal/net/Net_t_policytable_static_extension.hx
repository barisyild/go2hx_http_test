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
@:keep @:allow(stdgo._internal.net.Net.T_policyTable_asInterface) class T_policyTable_static_extension {
    @:keep
    @:tdfield
    static public function classify( _t:stdgo._internal.net.Net_t_policytable.T_policyTable, _ip:stdgo._internal.net.netip.Netip_addr.Addr):stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry {
        @:recv var _t:stdgo._internal.net.Net_t_policytable.T_policyTable = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L293"
        if (_ip.is4()) {
            _ip = stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(_ip.as16()?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L296"
        if (_t != null) for (__3 => _ent in _t) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L297"
            if (_ent.prefix.contains(_ip?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L298"
                return _ent?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L301"
        return (new stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry() : stdgo._internal.net.Net_t_policytableentry.T_policyTableEntry);
    }
}
