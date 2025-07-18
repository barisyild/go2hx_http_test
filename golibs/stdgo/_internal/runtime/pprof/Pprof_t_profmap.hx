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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_profmap_static_extension.T_profMap_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_t_profmap_static_extension.T_profMap_static_extension) class T_profMap {
    public var _hash : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>> = (null : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
    public var _all : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _last : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _free : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _freeStk : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public function new(?_hash:stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>, ?_all:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_last:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_free:stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_freeStk:stdgo.Slice<stdgo.GoUIntptr>) {
        if (_hash != null) this._hash = _hash;
        if (_all != null) this._all = _all;
        if (_last != null) this._last = _last;
        if (_free != null) this._free = _free;
        if (_freeStk != null) this._freeStk = _freeStk;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_hash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }) }, optional : false }, { name : "_all", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }, optional : false }, { name : "_free", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }, optional : false }, { name : "_freeStk", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_profMap(_hash, _all, _last, _free, _freeStk);
    }
}
