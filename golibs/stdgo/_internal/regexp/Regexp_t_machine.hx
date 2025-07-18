package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension) @:using(stdgo._internal.regexp.Regexp_t_machine_static_extension.T_machine_static_extension) class T_machine {
    public var _re : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
    public var _p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>);
    public var _q0 : stdgo._internal.regexp.Regexp_t_queue.T_queue = ({} : stdgo._internal.regexp.Regexp_t_queue.T_queue);
    public var _q1 : stdgo._internal.regexp.Regexp_t_queue.T_queue = ({} : stdgo._internal.regexp.Regexp_t_queue.T_queue);
    public var _pool : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>);
    public var _matched : Bool = false;
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public function new(?_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, ?_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, ?_q0:stdgo._internal.regexp.Regexp_t_queue.T_queue, ?_q1:stdgo._internal.regexp.Regexp_t_queue.T_queue, ?_pool:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>>, ?_matched:Bool, ?_matchcap:stdgo.Slice<stdgo.GoInt>, ?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs) {
        if (_re != null) this._re = _re;
        if (_p != null) this._p = _p;
        if (_q0 != null) this._q0 = _q0;
        if (_q1 != null) this._q1 = _q1;
        if (_pool != null) this._pool = _pool;
        if (_matched != null) this._matched = _matched;
        if (_matchcap != null) this._matchcap = _matchcap;
        if (_inputs != null) this._inputs = _inputs;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_re", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_regexpdotregexp.__type__stdgodot_internaldotregexpdotRegexp_regexpdotRegexp }) }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_progdotprog.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_progdotProg }) }, optional : false }, { name : "_q0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_queuedott_queue.__type__stdgodot_internaldotregexpdotRegexp_t_queuedotT_queue }, optional : false }, { name : "_q1", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_queuedott_queue.__type__stdgodot_internaldotregexpdotRegexp_t_queuedotT_queue }, optional : false }, { name : "_pool", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_threaddott_thread.__type__stdgodot_internaldotregexpdotRegexp_t_threaddotT_thread }) }) }, optional : false }, { name : "_matched", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_matchcap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_inputs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputsdott_inputs.__type__stdgodot_internaldotregexpdotRegexp_t_inputsdotT_inputs }, optional : false }])));
    public function __copy__() {
        return new T_machine(_re, _p, _q0, _q1, _pool, _matched, _matchcap, _inputs);
    }
}
