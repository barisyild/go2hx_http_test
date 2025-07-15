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
function mustHaveExecPath(_t:stdgo._internal.testing.Testing_tb.TB, _path:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L88"
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(_t);
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__execpaths._execPaths.load(new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _err:stdgo.AnyInterface = __tmp__._0, _found:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L91"
        if (!_found) {
            {
                var __tmp__ = stdgo._internal.os.exec.Exec_lookpath.lookPath(_path?.__copy__());
                _err = ({
                    final __t__ = @:tmpset0 __tmp__._1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
            {
                var __tmp__ = stdgo._internal.internal.testenv.Testenv__execpaths._execPaths.loadOrStore(new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _err);
                _err = @:tmpset0 __tmp__._0;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L95"
        if (({
            final value = _err;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L96"
            _t.skipf(("skipping test: %s: %s" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _err);
        };
    }
