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
function skipIfOptimizationOff(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L452"
        if (stdgo._internal.internal.testenv.Testenv_optimizationoff.optimizationOff()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L453"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L454"
            _t.skip(new stdgo.AnyInterface(("skipping test with optimization disabled" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
