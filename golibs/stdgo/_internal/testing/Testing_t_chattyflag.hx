package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension) @:using(stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension) class T_chattyFlag {
    public var _on : Bool = false;
    public var _json : Bool = false;
    public function new(?_on:Bool, ?_json:Bool) {
        if (_on != null) this._on = _on;
        if (_json != null) this._json = _json;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_on", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_json", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_chattyFlag(_on, _json);
    }
}
