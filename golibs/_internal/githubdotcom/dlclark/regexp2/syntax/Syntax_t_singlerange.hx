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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange_static_extension.T_singleRange_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_singlerange_static_extension.T_singleRange_static_extension) class T_singleRange {
    public var _first : stdgo.GoInt32 = 0;
    public var _last : stdgo.GoInt32 = 0;
    public function new(?_first:stdgo.GoInt32, ?_last:stdgo.GoInt32) {
        if (_first != null) this._first = _first;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_first", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_singleRange(_first, _last);
    }
}
