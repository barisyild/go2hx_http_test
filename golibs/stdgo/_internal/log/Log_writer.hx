package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function writer():stdgo._internal.io.Io_writer.Writer {
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L381"
        return stdgo._internal.log.Log__std._std.writer();
    }
