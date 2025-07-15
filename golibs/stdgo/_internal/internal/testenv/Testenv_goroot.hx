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
function gOROOT(_t:stdgo._internal.testing.Testing_tb.TB):stdgo.GoString {
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__findgoroot._findGOROOT(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L267"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L268"
            if (_t == null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L269"
                throw ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L271"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L272"
            _t.skip(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/testenv.go#L274"
        return _path?.__copy__();
    }
