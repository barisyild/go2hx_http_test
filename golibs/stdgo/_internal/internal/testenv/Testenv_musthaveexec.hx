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
function mustHaveExec(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L34"
        stdgo._internal.internal.testenv.Testenv__tryexeconce._tryExecOnce.do_(function():Void {
            stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr = stdgo._internal.internal.testenv.Testenv__tryexec._tryExec();
        });
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L37"
        if (stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L38"
            _t.skipf(("skipping test: cannot exec subprocess on %s/%s: %v" : stdgo.GoString), new stdgo.AnyInterface(("js" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("wasm" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = stdgo._internal.internal.testenv.Testenv__tryexecerr._tryExecErr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
