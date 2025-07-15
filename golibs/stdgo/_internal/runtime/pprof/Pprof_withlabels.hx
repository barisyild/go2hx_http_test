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
function withLabels(_ctx:stdgo._internal.context.Context_context.Context, _labels:stdgo._internal.runtime.pprof.Pprof_labelset.LabelSet):stdgo._internal.context.Context_context.Context {
        var _parentLabels = @:assignType (stdgo._internal.runtime.pprof.Pprof__labelvalue._labelValue(_ctx) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        var _childLabels = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap) : stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap);
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L65"
        if (_parentLabels != null) for (_k => _v in _parentLabels) {
            _childLabels[_k] = _v?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L68"
        if (_labels._list != null) for (__0 => _label in _labels._list) {
            _childLabels[_label._key] = _label._value?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/label.go#L71"
        return stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey() : stdgo._internal.runtime.pprof.Pprof_t_labelcontextkey.T_labelContextKey), _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelcontextkeydott_labelcontextkey.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelcontextkeydotT_labelContextKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelcontextkeydott_labelcontextkey.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelcontextkeydotT_labelContextKey)), new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_childLabels, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelmapdott_labelmap.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelmapdotT_labelMap })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>), _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelmapdott_labelmap.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelmapdotT_labelMap), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_labelmapdott_labelmap.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_labelmapdotT_labelMap }))));
    }
