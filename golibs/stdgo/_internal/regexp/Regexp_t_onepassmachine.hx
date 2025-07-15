package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_onepassmachine_static_extension.T_onePassMachine_static_extension) @:using(stdgo._internal.regexp.Regexp_t_onepassmachine_static_extension.T_onePassMachine_static_extension) class T_onePassMachine {
    public var _inputs : stdgo._internal.regexp.Regexp_t_inputs.T_inputs = ({} : stdgo._internal.regexp.Regexp_t_inputs.T_inputs);
    public var _matchcap : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_inputs:stdgo._internal.regexp.Regexp_t_inputs.T_inputs, ?_matchcap:stdgo.Slice<stdgo.GoInt>) {
        if (_inputs != null) this._inputs = _inputs;
        if (_matchcap != null) this._matchcap = _matchcap;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_inputs", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_inputsdott_inputs.__type__stdgodot_internaldotregexpdotRegexp_t_inputsdotT_inputs }, optional : false }, { name : "_matchcap", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_onePassMachine(_inputs, _matchcap);
    }
}
