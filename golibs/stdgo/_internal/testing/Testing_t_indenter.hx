package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_indenter_static_extension.T_indenter_static_extension) @:using(stdgo._internal.testing.Testing_t_indenter_static_extension.T_indenter_static_extension) class T_indenter {
    public var _c : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common> = (null : stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>);
    public function new(?_c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>) {
        if (_c != null) this._c = _c;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_c", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_t_commondott_common.__type__stdgodot_internaldottestingdotTesting_t_commondotT_common }) }, optional : false }])));
    public function __copy__() {
        return new T_indenter(_c);
    }
}
