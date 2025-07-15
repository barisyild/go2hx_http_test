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
@:keep @:allow(stdgo._internal.net.Net.T_nssSource_asInterface) class T_nssSource_static_extension {
    @:keep
    @:tdfield
    static public function _standardCriteria( _s:stdgo._internal.net.Net_t_nsssource.T_nssSource):Bool {
        @:recv var _s:stdgo._internal.net.Net_t_nsssource.T_nssSource = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L110"
        if (_s._criteria != null) for (_i => _crit in _s._criteria) {
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L111"
            if (!_crit._standardStatusAction(_i == (((_s._criteria.length) - (1 : stdgo.GoInt) : stdgo.GoInt)))) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L112"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L115"
        return true;
    }
}
