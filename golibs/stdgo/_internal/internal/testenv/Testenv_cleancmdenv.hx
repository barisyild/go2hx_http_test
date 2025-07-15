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
function cleanCmdEnv(_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L104"
        if ((@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).env != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L105"
            throw new stdgo.AnyInterface(("environment already set" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L107"
        if (stdgo._internal.os.Os_environ_.environ_() != null) for (__0 => _env in stdgo._internal.os.Os_environ_.environ_()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L110"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GODEBUG=" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L111"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L114"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_env?.__copy__(), ("GOTRACEBACK=" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L115"
                continue;
            };
            (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).env = ((@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).env.__append__(_env?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L119"
        return _cmd;
    }
