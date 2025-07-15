package _internal.reflect_test;
@:structInit @:using(_internal.reflect_test.Reflect_test_t_caseinfo_static_extension.T_caseInfo_static_extension) @:using(_internal.reflect_test.Reflect_test_t_caseinfo_static_extension.T_caseInfo_static_extension) class T_caseInfo {
    public var _desc : stdgo.GoString = "";
    public var _canSelect : Bool = false;
    public var _recv : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var _closed : Bool = false;
    public var _helper : () -> Void = null;
    public var _panic : Bool = false;
    public function new(?_desc:stdgo.GoString, ?_canSelect:Bool, ?_recv:stdgo._internal.reflect.Reflect_value.Value, ?_closed:Bool, ?_helper:() -> Void, ?_panic:Bool) {
        if (_desc != null) this._desc = _desc;
        if (_canSelect != null) this._canSelect = _canSelect;
        if (_recv != null) this._recv = _recv;
        if (_closed != null) this._closed = _closed;
        if (_helper != null) this._helper = _helper;
        if (_panic != null) this._panic = _panic;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_desc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_canSelect", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_recv", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_helper", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_panic", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_caseInfo(_desc, _canSelect, _recv, _closed, _helper, _panic);
    }
}
