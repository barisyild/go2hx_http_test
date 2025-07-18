package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _startTimer(_0:stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>):Void {
        final t:Dynamic = _0;
        t._status = 1;
        var diff = (t._when - stdgo._internal.time.Time__runtimenano._runtimeNano()) / (1000 * 1000);
        if (diff > 1 << 31 - 1) return;
        if (diff < 0) diff = 0;
        final d = (diff : stdgo.GoInt).toBasic() + 1;
        final timer = new haxe.Timer(d);
        timer.run = function() {
            timer.stop();
            t._status = 0;
            if (t._period != (0 : stdgo.GoInt64)) {
                t._when += t._period;
                _startTimer(t);
            };
            stdgo.Go.routine(function() {
                t._f(t._arg, new stdgo.GoUIntptr(0));
            });
        };
        t._pp = new stdgo.GoUIntptr(timer);
    }
