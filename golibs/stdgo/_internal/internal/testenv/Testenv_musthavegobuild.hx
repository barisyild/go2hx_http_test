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
function mustHaveGoBuild(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L117"
        if (stdgo._internal.os.Os_getenv.getenv(("GO_GCFLAGS" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L118"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L119"
            _t.skipf(("skipping test: \'go build\' not compatible with setting $GO_GCFLAGS" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L121"
        if (!stdgo._internal.internal.testenv.Testenv_hasgobuild.hasGoBuild()) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L122"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L123"
            _t.skipf(("skipping test: \'go build\' unavailable: %v" : stdgo.GoString), ({
                final __t__ = stdgo._internal.internal.testenv.Testenv__gobuilderr._goBuildErr;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
