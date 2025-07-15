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
function skipFlaky(_t:stdgo._internal.testing.Testing_tb.TB, _issue:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L417"
        _t.helper();
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L418"
        if (!stdgo._internal.internal.testenv.Testenv__flaky._flaky.value) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L419"
            _t.skipf(("skipping known flaky test without the -flaky flag; see golang.org/issue/%d" : stdgo.GoString), new stdgo.AnyInterface(_issue, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
