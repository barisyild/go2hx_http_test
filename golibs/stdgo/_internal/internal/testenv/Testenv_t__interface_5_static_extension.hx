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
@:keep class T__interface_5_static_extension {
    @:interfacetypeffun
    static public function deadline(t:stdgo._internal.internal.testenv.Testenv_t__interface_5.T__interface_5):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } return t.deadline();
}
