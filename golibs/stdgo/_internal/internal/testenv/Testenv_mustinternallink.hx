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
function mustInternalLink(_t:stdgo._internal.testing.Testing_tb.TB, _withCgo:Bool):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L366"
        if (!stdgo._internal.internal.testenv.Testenv_caninternallink.canInternalLink(_withCgo)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L367"
            if ((_withCgo && stdgo._internal.internal.testenv.Testenv_caninternallink.canInternalLink(false) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L368"
                _t.skipf(("skipping test: internal linking on %s/%s is not supported with cgo" : stdgo.GoString), new stdgo.AnyInterface(("js" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("wasm" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L370"
            _t.skipf(("skipping test: internal linking on %s/%s is not supported" : stdgo.GoString), new stdgo.AnyInterface(("js" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("wasm" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
