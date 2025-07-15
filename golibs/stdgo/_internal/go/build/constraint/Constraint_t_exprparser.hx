package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension) @:using(stdgo._internal.go.build.constraint.Constraint_t_exprparser_static_extension.T_exprParser_static_extension) class T_exprParser {
    public var _s : stdgo.GoString = "";
    public var _i : stdgo.GoInt = 0;
    public var _tok : stdgo.GoString = "";
    public var _isTag : Bool = false;
    public var _pos : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt, ?_tok:stdgo.GoString, ?_isTag:Bool, ?_pos:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_tok != null) this._tok = _tok;
        if (_isTag != null) this._isTag = _isTag;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_s", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_tok", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_isTag", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_exprParser(_s, _i, _tok, _isTag, _pos);
    }
}
