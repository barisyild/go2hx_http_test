package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.io.fs.Fs;
function cPUIsSlow():Bool {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L432"
        {
            final __value__ = ("wasm" : stdgo.GoString);
            if (__value__ == (("arm" : stdgo.GoString)) || __value__ == (("mips" : stdgo.GoString)) || __value__ == (("mipsle" : stdgo.GoString)) || __value__ == (("mips64" : stdgo.GoString)) || __value__ == (("mips64le" : stdgo.GoString)) || __value__ == (("wasm" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L434"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L436"
        return false;
    }
