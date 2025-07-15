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
function _writeGoroutine(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L691"
        if ((_debug >= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L692"
            return stdgo._internal.runtime.pprof.Pprof__writegoroutinestacks._writeGoroutineStacks(_w);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L694"
        return stdgo._internal.runtime.pprof.Pprof__writeruntimeprofile._writeRuntimeProfile(_w, _debug, ("goroutine" : stdgo.GoString), stdgo._internal.runtime.pprof.Pprof__runtime_goroutineprofilewithlabels._runtime_goroutineProfileWithLabels);
    }
