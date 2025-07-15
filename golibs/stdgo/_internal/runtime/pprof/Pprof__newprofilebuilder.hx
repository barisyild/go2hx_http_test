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
function _newProfileBuilder(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder> {
        var __tmp__ = stdgo._internal.compress.gzip.Gzip_newwriterlevel.newWriterLevel(_w, (1 : stdgo.GoInt)), _zw:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var _b = (stdgo.Go.setRef(({ _w : _w, _zw : _zw, _start : stdgo._internal.time.Time_now.now()?.__copy__(), _strings : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), _stringMap : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set((stdgo.Go.str() : stdgo.GoString), (0 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>), _locs : ({
            final x = new stdgo.GoMap.GoUIntptrMap<stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoUIntptr, stdgo._internal.runtime.pprof.Pprof_t_locinfo.T_locInfo>), _funcs : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) } : stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profilebuilderdott_profilebuilder.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profilebuilderdotT_profileBuilder })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profilebuilder.T_profileBuilder>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L270"
        _b._readMapping();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/proto.go#L271"
        return _b;
    }
