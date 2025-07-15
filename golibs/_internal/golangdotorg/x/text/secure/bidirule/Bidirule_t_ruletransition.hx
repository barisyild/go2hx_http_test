package _internal.golangdotorg.x.text.secure.bidirule;
import stdgo._internal.errors.Errors;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
import _internal.golangdotorg.x.text.transform.Transform;
@:structInit @:using(_internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_ruletransition_static_extension.T_ruleTransition_static_extension) @:using(_internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_ruletransition_static_extension.T_ruleTransition_static_extension) class T_ruleTransition {
    public var _next : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState);
    public var _mask : stdgo.GoUInt16 = 0;
    public function new(?_next:_internal.golangdotorg.x.text.secure.bidirule.Bidirule_t_rulestate.T_ruleState, ?_mask:stdgo.GoUInt16) {
        if (_next != null) this._next = _next;
        if (_mask != null) this._mask = _mask;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_next", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotsecuredotbidiruledotbidirule_t_rulestatedott_rulestate.__type___internaldotgolangdotorgdotxdottextdotsecuredotbidiruledotBidirule_t_rulestatedotT_ruleState }, optional : false }, { name : "_mask", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new T_ruleTransition(_next, _mask);
    }
}
