package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
function _sendTime(_c:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        //"file:///Users/o/.go/go1.21.3/src/time/sleep.go#L144"
        {
            var __select__ = true;
            var __c__0 = (stdgo.Go.typeAssert(_c, stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime })) : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
            while (__select__) {
                if ((stdgo.Go.typeAssert(_c, stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime })) : stdgo.Chan<stdgo._internal.time.Time_time.Time>) != null && __c__0.__isSend__(true)) {
                    __select__ = false;
                    {
                        __c__0.__send__(stdgo._internal.time.Time_now.now()?.__copy__());
                        {};
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
    }
