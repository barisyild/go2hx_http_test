package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_encopts_static_extension.T_encOpts_static_extension) @:using(stdgo._internal.encoding.json.Json_t_encopts_static_extension.T_encOpts_static_extension) class T_encOpts {
    public var _quoted : Bool = false;
    public var _escapeHTML : Bool = false;
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) {
        if (_quoted != null) this._quoted = _quoted;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_quoted", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_escapeHTML", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_encOpts(_quoted, _escapeHTML);
    }
}
