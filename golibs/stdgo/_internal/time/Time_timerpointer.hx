package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(stdgo._internal.time.Time_timer_static_extension.Timer_static_extension) @:using(stdgo._internal.time.Time_timerpointer_static_extension.TimerPointer_static_extension) typedef TimerPointer = stdgo.Pointer<stdgo._internal.time.Time_timer.Timer>;
