package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_t_parseerror_static_extension.T_parseError_static_extension) @:using(stdgo._internal.internal.bisect.Bisect_t_parseerror_static_extension.T_parseError_static_extension) class T_parseError {
    public var _text : stdgo.GoString = "";
    public function new(?_text:stdgo.GoString) {
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_text", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_parseError(_text);
    }
}
