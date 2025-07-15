package stdgo._internal.internal.godebug;
@:structInit @:using(stdgo._internal.internal.godebug.Godebug_t_value_static_extension.T_value_static_extension) @:using(stdgo._internal.internal.godebug.Godebug_t_value_static_extension.T_value_static_extension) class T_value {
    public var _text : stdgo.GoString = "";
    public var _bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher> = (null : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
    public function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>) {
        if (_text != null) this._text = _text;
        if (_bisect != null) this._bisect = _bisect;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_text", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_bisect", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotbisectdotbisect_matcherdotmatcher.__type__stdgodot_internaldotinternaldotbisectdotBisect_matcherdotMatcher }) }, optional : false }])));
    public function __copy__() {
        return new T_value(_text, _bisect);
    }
}
