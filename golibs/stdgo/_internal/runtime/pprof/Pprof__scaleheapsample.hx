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
function _scaleHeapSample(_count:stdgo.GoInt64, _size:stdgo.GoInt64, _rate:stdgo.GoInt64):{ var _0 : stdgo.GoInt64; var _1 : stdgo.GoInt64; } {
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/protomem.go#L79"
        if (((_count == (0i64 : stdgo.GoInt64)) || (_size == (0i64 : stdgo.GoInt64)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/protomem.go#L80"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (0i64 : stdgo.GoInt64) };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/protomem.go#L83"
        if ((_rate <= (1i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/protomem.go#L86"
            return { _0 : _count, _1 : _size };
        };
        var _avgSize = @:assignType ((_size : stdgo.GoFloat64) / (_count : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _scale = @:assignType ((1 : stdgo.GoFloat64) / (((1 : stdgo.GoFloat64) - stdgo._internal.math.Math_exp.exp((-_avgSize / (_rate : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/protomem.go#L92"
        return { _0 : (((_count : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64), _1 : (((_size : stdgo.GoFloat64) * _scale : stdgo.GoFloat64) : stdgo.GoInt64) };
    }
