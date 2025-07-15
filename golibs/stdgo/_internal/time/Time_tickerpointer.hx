package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(stdgo._internal.time.Time_ticker_static_extension.Ticker_static_extension) @:using(stdgo._internal.time.Time_tickerpointer_static_extension.TickerPointer_static_extension) typedef TickerPointer = stdgo.Pointer<stdgo._internal.time.Time_ticker.Ticker>;
