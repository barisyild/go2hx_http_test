package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension) @:using(stdgo._internal.regexp.Regexp_t_bitstate_static_extension.T_bitState_static_extension) class T_bitState {
    public var _end : stdgo.GoInt = 0;
    public var _cap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _jobs : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job> = (null : stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>);
    public var _visited : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public function new(?_end:stdgo.GoInt, ?_cap:stdgo.Slice<stdgo.GoInt>, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_jobs:stdgo.Slice<stdgo._internal.regexp.Regexp_t_job.T_job>, ?_visited:stdgo.Slice<stdgo.GoUInt32>, ?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs) {
        if (_end != null) this._end = _end;
        if (_cap != null) this._cap = _cap;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_jobs != null) this._jobs = _jobs;
        if (_visited != null) this._visited = _visited;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_end", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_cap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_matchcap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_jobs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_jobdott_job.__type__stdgodot_internaldotregexpdotRegexp_t_jobdotT_job }) }, optional : false }, { name : "_visited", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }, optional : false }, { name : "_inputs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputsdott_inputs.__type__stdgodot_internaldotregexpdotRegexp_t_inputsdotT_inputs }, optional : false }])));
    public function __copy__() {
        return new T_bitState(_end, _cap, _matchcap, _jobs, _visited, _inputs);
    }
}
