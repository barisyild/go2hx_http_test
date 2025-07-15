package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
@:structInit @:using(_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer_static_extension.Transformer_static_extension) @:using(_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer_static_extension.Transformer_static_extension) class Transformer {
    public var _state : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
    public var _hasRTL : Bool = false;
    public var _seen : stdgo.GoUInt16 = 0;
    public function new(?_state:_internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState, ?_hasRTL:Bool, ?_seen:stdgo.GoUInt16) {
        if (_state != null) this._state = _state;
        if (_hasRTL != null) this._hasRTL = _hasRTL;
        if (_seen != null) this._seen = _seen;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotsecuredotbidiruledotbidirule_t_rulestatedott_rulestate.__type___internaldotgolangdotorgdotxdottextdotsecuredotbidiruledotBidirule_t_rulestatedotT_ruleState }, optional : false }, { name : "_hasRTL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_seen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new Transformer(_state, _hasRTL, _seen);
    }
}
