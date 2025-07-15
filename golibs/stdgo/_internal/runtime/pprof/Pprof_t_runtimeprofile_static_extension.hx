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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_runtimeProfile_asInterface) class T_runtimeProfile_static_extension {
    @:keep
    @:tdfield
    static public function label( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L752"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._labels[(_i : stdgo.GoInt)].__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_labelmap.T_labelMap>);
    }
    @:keep
    @:tdfield
    static public function stack( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>, _i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L751"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk[(_i : stdgo.GoInt)].stack();
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_runtimeprofile.T_runtimeProfile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L750"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk.length);
    }
}
