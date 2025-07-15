package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
function _lockProfiles():Void {
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L183"
        stdgo._internal.runtime.pprof.Pprof__profiles._profiles._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L184"
        if (stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m == null) {
            stdgo._internal.runtime.pprof.Pprof__profiles._profiles._m = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>);
                x.set(("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__goroutineprofile._goroutineProfile);
x.set(("threadcreate" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__threadcreateprofile._threadcreateProfile);
x.set(("heap" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__heapprofile._heapProfile);
x.set(("allocs" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__allocsprofile._allocsProfile);
x.set(("block" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__blockprofile._blockProfile);
x.set(("mutex" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__mutexprofile._mutexProfile);
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_profile.Profile>>);
        };
    }
