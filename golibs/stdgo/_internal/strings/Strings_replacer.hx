package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension) @:using(stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension) class Replacer {
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _r : stdgo._internal.strings.Strings_t_replacer.T_replacer = (null : stdgo._internal.strings.Strings_t_replacer.T_replacer);
    public var _oldnew : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_r:stdgo._internal.strings.Strings_t_replacer.T_replacer, ?_oldnew:stdgo.Slice<stdgo.GoString>) {
        if (_once != null) this._once = _once;
        if (_r != null) this._r = _r;
        if (_oldnew != null) this._oldnew = _oldnew;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_replacerdott_replacer.__type__stdgodot_internaldotstringsdotStrings_t_replacerdotT_replacer }, optional : false }, { name : "_oldnew", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Replacer(_once, _r, _oldnew);
    }
}
