package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(stdgo._internal.log.Log_logger_static_extension.Logger_static_extension) @:using(stdgo._internal.log.Log_loggerpointer_static_extension.LoggerPointer_static_extension) typedef LoggerPointer = stdgo.Pointer<stdgo._internal.log.Log_logger.Logger>;
