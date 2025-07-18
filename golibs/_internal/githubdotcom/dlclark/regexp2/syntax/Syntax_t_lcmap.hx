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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_lcmap_static_extension.T_lcMap_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_lcmap_static_extension.T_lcMap_static_extension) class T_lcMap {
    public var _chMin : stdgo.GoInt32 = 0;
    public var _chMax : stdgo.GoInt32 = 0;
    public var _op : stdgo.GoInt32 = 0;
    public var _data : stdgo.GoInt32 = 0;
    public function new(?_chMin:stdgo.GoInt32, ?_chMax:stdgo.GoInt32, ?_op:stdgo.GoInt32, ?_data:stdgo.GoInt32) {
        if (_chMin != null) this._chMin = _chMin;
        if (_chMax != null) this._chMax = _chMax;
        if (_op != null) this._op = _op;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_chMin", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_chMax", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_op", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_lcMap(_chMin, _chMax, _op, _data);
    }
}
