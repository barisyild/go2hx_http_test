package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category_static_extension.T_category_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_category_static_extension.T_category_static_extension) class T_category {
    public var _negate : Bool = false;
    public var _cat : stdgo.GoString = "";
    public function new(?_negate:Bool, ?_cat:stdgo.GoString) {
        if (_negate != null) this._negate = _negate;
        if (_cat != null) this._cat = _cat;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_negate", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_cat", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_category(_negate, _cat);
    }
}
