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
function _partialDeadline(_now:stdgo._internal.time.Time_time.Time, _deadline:stdgo._internal.time.Time_time.Time, _addrsRemaining:stdgo.GoInt):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L199"
        if (_deadline.isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L200"
            return { _0 : _deadline?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _timeRemaining = @:assignType (_deadline.sub(_now?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L203"
        if ((_timeRemaining <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L204"
            return { _0 : (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _1 : stdgo._internal.net.Net__errtimeout._errTimeout };
        };
        var _timeout = @:assignType (_timeRemaining / (_addrsRemaining : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L210"
        if ((_timeout < (2000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L211"
            if ((_timeRemaining < (2000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                _timeout = _timeRemaining;
            } else {
                _timeout = (2000000000i64 : stdgo._internal.time.Time_duration.Duration);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L217"
        return { _0 : _now.add(_timeout)?.__copy__(), _1 : (null : stdgo.Error) };
    }
