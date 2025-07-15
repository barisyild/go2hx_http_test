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
function _tryExec():stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L48"
        {
            final __value__ = ("js" : stdgo.GoString);
            if (__value__ == (("wasip1" : stdgo.GoString)) || __value__ == (("js" : stdgo.GoString)) || __value__ == (("ios" : stdgo.GoString))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L52"
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L64"
        if (!stdgo._internal.testing.Testing_testing.testing()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L68"
            return stdgo._internal.errors.Errors_new_.new_(("can\'t probe for exec support with a non-test executable" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.os.Os_executable.executable(), _exe:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L74"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L75"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("can\'t probe for exec support: %w" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_exe?.__copy__(), ("-test.list=^$" : stdgo.GoString));
        (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).env = stdgo._internal.internal.testenv.Testenv__origenv._origEnv;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L79"
        return _cmd.run();
    }
