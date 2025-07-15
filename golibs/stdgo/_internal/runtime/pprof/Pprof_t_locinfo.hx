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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_locinfo_static_extension.T_locInfo_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_t_locinfo_static_extension.T_locInfo_static_extension) class T_locInfo {
    public var _id : stdgo.GoUInt64 = 0;
    public var _pcs : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _firstPCFrames : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame> = (null : stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>);
    public var _firstPCSymbolizeResult : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag = ((0 : stdgo.GoUInt8) : stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag);
    public function new(?_id:stdgo.GoUInt64, ?_pcs:stdgo.Slice<stdgo.GoUIntptr>, ?_firstPCFrames:stdgo.Slice<stdgo._internal.runtime.Runtime_frame.Frame>, ?_firstPCSymbolizeResult:stdgo._internal.runtime.pprof.Pprof_t_symbolizeflag.T_symbolizeFlag) {
        if (_id != null) this._id = _id;
        if (_pcs != null) this._pcs = _pcs;
        if (_firstPCFrames != null) this._firstPCFrames = _firstPCFrames;
        if (_firstPCSymbolizeResult != null) this._firstPCSymbolizeResult = _firstPCSymbolizeResult;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_pcs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }) }, optional : false }, { name : "_firstPCFrames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_framedotframe.__type__stdgodot_internaldotruntimedotRuntime_framedotFrame }) }, optional : false }, { name : "_firstPCSymbolizeResult", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_symbolizeflagdott_symbolizeflag.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_symbolizeflagdotT_symbolizeFlag }, optional : false }])));
    public function __copy__() {
        return new T_locInfo(_id, _pcs, _firstPCFrames, _firstPCSymbolizeResult);
    }
}
