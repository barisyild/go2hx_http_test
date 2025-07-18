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
function _writeRuntimeProfile(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt, _name:stdgo.GoString, _fetch:(stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>, stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>) -> { var _0 : stdgo.GoInt; var _1 : Bool; }):stdgo.Error {
        var _p:stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
        var _labels:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        var __tmp__ = _fetch((null : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>), (null : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>)), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L728"
        while (true) {
            _p = (new stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>((_n + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? (_n + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_stackrecord.StackRecord)]) : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
            _labels = (new stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>((_n + (10 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
            {
                var __tmp__ = _fetch(_p, _labels);
                _n = @:tmpset0 __tmp__._0;
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L735"
            if (_ok) {
                _p = (_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo._internal.runtime.Runtime_stackrecord.StackRecord>);
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L737"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L742"
        return stdgo._internal.runtime.pprof.Pprof__printcountprofile._printCountProfile(_w, _debug, _name?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile(_p, _labels) : stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_runtimeprofiledott_runtimeprofile.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_runtimeprofiledotT_runtimeProfile })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_runtimeprofiledott_runtimeprofile.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_runtimeprofiledotT_runtimeProfile })));
    }
