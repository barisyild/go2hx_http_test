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
@:structInit @:using(stdgo._internal.runtime.pprof.Pprof_t_profmapentry_static_extension.T_profMapEntry_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_t_profmapentry_static_extension.T_profMapEntry_static_extension) class T_profMapEntry {
    public var _nextHash : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _nextAll : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
    public var _stk : stdgo.Slice<stdgo.GoUIntptr> = (null : stdgo.Slice<stdgo.GoUIntptr>);
    public var _tag : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _count : stdgo.GoInt64 = 0;
    public function new(?_nextHash:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_nextAll:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>, ?_stk:stdgo.Slice<stdgo.GoUIntptr>, ?_tag:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_count:stdgo.GoInt64) {
        if (_nextHash != null) this._nextHash = _nextHash;
        if (_nextAll != null) this._nextAll = _nextAll;
        if (_stk != null) this._stk = _stk;
        if (_tag != null) this._tag = _tag;
        if (_count != null) this._count = _count;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_nextHash", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }, optional : false }, { name : "_nextAll", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry }) }, optional : false }, { name : "_stk", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }) }, optional : false }, { name : "_tag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_profMapEntry(_nextHash, _nextAll, _stk, _tag, _count);
    }
}
