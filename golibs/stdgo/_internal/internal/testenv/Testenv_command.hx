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
function command(_t:stdgo._internal.testing.Testing_tb.TB, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L217"
        _t.helper();
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L218"
        return stdgo._internal.internal.testenv.Testenv_commandcontext.commandContext(_t, stdgo._internal.context.Context_background.background(), _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
    }
