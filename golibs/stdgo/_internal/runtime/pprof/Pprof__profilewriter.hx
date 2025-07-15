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
function _profileWriter(_w:stdgo._internal.io.Io_writer.Writer):Void {
        var _b = stdgo._internal.runtime.pprof.Pprof__newprofilebuilder._newProfileBuilder(_w);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L808"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L809"
            stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_duration.Duration));
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__readprofile._readProfile(), _data:stdgo.Slice<stdgo.GoUInt64> = __tmp__._0, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer> = __tmp__._1, _eof:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L811"
            {
                var _e = @:assignType (_b._addCPUData(_data, _tags) : stdgo.Error);
                if (((_e != null) && (_err == null) : Bool)) {
                    _err = _e;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L814"
            if (_eof) {
                //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L815"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L818"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L821"
            throw new stdgo.AnyInterface((("runtime/pprof: converting profile: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L823"
        _b._build();
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L824"
        stdgo._internal.runtime.pprof.Pprof__cpu._cpu._done.__send__(true);
    }
