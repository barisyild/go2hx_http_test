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
function _printCountCycleProfile(_w:stdgo._internal.io.Io_writer.Writer, _countName:stdgo.GoString, _cycleName:stdgo.GoString, _records:stdgo.Slice<stdgo._internal.runtime.Runtime_blockprofilerecord.BlockProfileRecord>):stdgo.Error {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L377"
        _b._pbValueType((11 : stdgo.GoInt), _countName?.__copy__(), ("count" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L378"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pb._int64Opt((12 : stdgo.GoInt), (1i64 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L379"
        _b._pbValueType((1 : stdgo.GoInt), _countName?.__copy__(), ("count" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L380"
        _b._pbValueType((1 : stdgo.GoInt), _cycleName?.__copy__(), ("nanoseconds" : stdgo.GoString));
        var _cpuGHz = @:assignType ((stdgo._internal.runtime.pprof.Pprof__runtime_cyclespersecond._runtime_cyclesPerSecond() : stdgo.GoFloat64) / (1e+09 : stdgo.GoFloat64) : stdgo.GoFloat64);
        var _values = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L386"
        if (_records != null) for (__0 => _r in _records) {
            _values[(0 : stdgo.GoInt)] = _r.count;
            _values[(1 : stdgo.GoInt)] = (((_r.cycles : stdgo.GoFloat64) / _cpuGHz : stdgo.GoFloat64) : stdgo.GoInt64);
            _locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _r.stack());
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L392"
            _b._pbSample(_values, _locs, null);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L394"
        _b._build();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L395"
        return (null : stdgo.Error);
    }
