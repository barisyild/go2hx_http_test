package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.regexp.Regexp_t_entry_static_extension.T_entry_static_extension) @:using(stdgo._internal.regexp.Regexp_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _pc : stdgo.GoUInt32 = 0;
    public var _t : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread> = (null : stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>);
    public function new(?_pc:stdgo.GoUInt32, ?_t:stdgo.Ref<stdgo._internal.regexp.Regexp_t_thread.T_thread>) {
        if (_pc != null) this._pc = _pc;
        if (_t != null) this._t = _t;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_t", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotregexp_t_threaddott_thread.__type__stdgodot_internaldotregexpdotRegexp_t_threaddotT_thread }) }, optional : false }])));
    public function __copy__() {
        return new T_entry(_pc, _t);
    }
}
