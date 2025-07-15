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
function skipFlakyNet(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L424"
        _t.helper();
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L425"
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(stdgo._internal.os.Os_getenv.getenv(("GO_BUILDER_FLAKY_NET" : stdgo.GoString))?.__copy__()), _v:Bool = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            if (_v) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L426"
                _t.skip(new stdgo.AnyInterface(("skipping test on builder known to have frequent network failures" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
    }
