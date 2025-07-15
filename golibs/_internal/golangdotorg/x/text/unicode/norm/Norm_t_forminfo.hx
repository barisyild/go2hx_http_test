package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo_static_extension.T_formInfo_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo_static_extension.T_formInfo_static_extension) class T_formInfo {
    public var _form : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form);
    public var _composing : Bool = false;
    public var _compatibility : Bool = false;
    public var _info : _internal.golangdotorg.x.text.unicode.norm.Norm_t_lookupfunc.T_lookupFunc = (null : _internal.golangdotorg.x.text.unicode.norm.Norm_t_lookupfunc.T_lookupFunc);
    public var _nextMain : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc = (null : _internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc);
    public function new(?_form:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, ?_composing:Bool, ?_compatibility:Bool, ?_info:_internal.golangdotorg.x.text.unicode.norm.Norm_t_lookupfunc.T_lookupFunc, ?_nextMain:_internal.golangdotorg.x.text.unicode.norm.Norm_t_iterfunc.T_iterFunc) {
        if (_form != null) this._form = _form;
        if (_composing != null) this._composing = _composing;
        if (_compatibility != null) this._compatibility = _compatibility;
        if (_info != null) this._info = _info;
        if (_nextMain != null) this._nextMain = _nextMain;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_form", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_formdotform.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_formdotForm }, optional : false }, { name : "_composing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_compatibility", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_info", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_lookupfuncdott_lookupfunc.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_lookupfuncdotT_lookupFunc }, optional : false }, { name : "_nextMain", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_iterfuncdott_iterfunc.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_iterfuncdotT_iterFunc }, optional : false }])));
    public function __copy__() {
        return new T_formInfo(_form, _composing, _compatibility, _info, _nextMain);
    }
}
