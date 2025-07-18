package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_t_singlestringreplacer_static_extension.T_singleStringReplacer_static_extension) @:using(stdgo._internal.strings.Strings_t_singlestringreplacer_static_extension.T_singleStringReplacer_static_extension) class T_singleStringReplacer {
    public var _finder : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>);
    public var _value : stdgo.GoString = "";
    public function new(?_finder:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>, ?_value:stdgo.GoString) {
        if (_finder != null) this._finder = _finder;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_finder", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_stringfinderdott_stringfinder.__type__stdgodot_internaldotstringsdotStrings_t_stringfinderdotT_stringFinder }) }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_singleStringReplacer(_finder, _value);
    }
}
