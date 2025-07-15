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
function _peBuildID(_file:stdgo.GoString):stdgo.GoString {
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_file?.__copy__()), _s:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pe.go#L15"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pe.go#L16"
            return _file?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pe.go#L18"
        return (_file + (_s.modTime().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
