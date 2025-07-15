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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_labelMap_asInterface) class T_labelMap_static_extension {
    @:keep
    @:tdfield
    static public function string( _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> = _l;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L43"
        if (({
            final value = _l;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L44"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _keyVals = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_l : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap).length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L48"
        if ((_l : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap) != null) for (_k => _v in (_l : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap)) {
            _keyVals = (_keyVals.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%q:%q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L52"
        stdgo._internal.sort.Sort_strings.strings(_keyVals);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L54"
        return ((("{" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_keyVals, (", " : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
