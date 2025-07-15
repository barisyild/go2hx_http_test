package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function setOutput(_w:stdgo._internal.io.Io_writer.Writer):Void {
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L354"
        stdgo._internal.log.Log__std._std.setOutput(_w);
    }
