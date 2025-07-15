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
@:keep @:allow(stdgo._internal.net.Net.T_nssCriterion_asInterface) class T_nssCriterion_static_extension {
    @:keep
    @:tdfield
    static public function _standardStatusAction( _c:stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion, _last:Bool):Bool {
        @:recv var _c:stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion = _c?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L130"
        if (_c._negate) {
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L131"
            return false;
        };
        var _def:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L134"
        {
            final __value__ = _c._status;
            if (__value__ == (("success" : stdgo.GoString))) {
                _def = ("return" : stdgo.GoString);
            } else if (__value__ == (("notfound" : stdgo.GoString)) || __value__ == (("unavail" : stdgo.GoString)) || __value__ == (("tryagain" : stdgo.GoString))) {
                _def = ("continue" : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L141"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L143"
        if ((_last && (_c._action == ("return" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L144"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L146"
        return _c._action == (_def);
    }
}
