package stdgo._internal.log;
import stdgo._internal.os.Os;
import stdgo._internal.log.internal.Internal;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.runtime.Runtime;
function prefix():stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/log/log.go#L371"
        return stdgo._internal.log.Log__std._std.prefix()?.__copy__();
    }
