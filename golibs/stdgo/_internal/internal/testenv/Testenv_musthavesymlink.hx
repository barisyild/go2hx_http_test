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
function mustHaveSymlink(_t:stdgo._internal.testing.Testing_tb.TB):Void {
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__hassymlink._hasSymlink(), _ok:Bool = __tmp__._0, _reason:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L393"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L394"
            _t.skipf(("skipping test: cannot make symlinks on %s/%s: %s" : stdgo.GoString), new stdgo.AnyInterface(("js" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("wasm" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_reason, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
