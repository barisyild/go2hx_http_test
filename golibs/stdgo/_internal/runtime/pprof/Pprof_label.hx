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
function label(_ctx:stdgo._internal.context.Context_context.Context, _key:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _ctxLabels = @:assignType (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        var __tmp__ = (_ctxLabels != null && _ctxLabels.__exists__(_key?.__copy__()) ? { _0 : _ctxLabels[_key?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L96"
        return { _0 : _v?.__copy__(), _1 : _ok };
    }
