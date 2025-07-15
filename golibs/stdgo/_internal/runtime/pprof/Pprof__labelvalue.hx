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
function _labelValue(_ctx:stdgo._internal.context.Context_context.Context):stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_ctx.value(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey), _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelcontextkeydott_labelcontextkey.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelcontextkeydotT_labelContextKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelcontextkeydott_labelcontextkey.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelcontextkeydotT_labelContextKey))), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelmapdott_labelmap.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelmapdotT_labelMap })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>), _1 : false };
        }, _labels = __tmp__._0, __0 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L29"
        if (({
            final value = _labels;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L30"
            return (null : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L32"
        return (_labels : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
    }
