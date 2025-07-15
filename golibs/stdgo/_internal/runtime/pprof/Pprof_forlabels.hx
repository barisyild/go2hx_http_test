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
function forLabels(_ctx:stdgo._internal.context.Context_context.Context, _f:(stdgo.GoString, stdgo.GoString) -> Bool):Void {
        var _ctxLabels = @:assignType (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L103"
        if (_ctxLabels != null) for (_k => _v in _ctxLabels) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L104"
            if (!_f(_k?.__copy__(), _v?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L105"
                break;
            };
        };
    }
