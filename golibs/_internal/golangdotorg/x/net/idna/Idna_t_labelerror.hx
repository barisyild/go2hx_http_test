package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_t_labelerror_static_extension.T_labelError_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_t_labelerror_static_extension.T_labelError_static_extension) class T_labelError {
    public var _label : stdgo.GoString = "";
    public var _code_ : stdgo.GoString = "";
    public function new(?_label:stdgo.GoString, ?_code_:stdgo.GoString) {
        if (_label != null) this._label = _label;
        if (_code_ != null) this._code_ = _code_;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_label", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_code_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_labelError(_label, _code_);
    }
}
