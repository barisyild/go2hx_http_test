package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension) @:using(stdgo._internal.syscall.js.Js_value_static_extension.Value_static_extension) class Value {
    @:optional
    public var __0 : stdgo.GoArray<() -> Void> = new stdgo.GoArray<() -> Void>(0, 0);
    public var _ref : stdgo._internal.syscall.js.Js_t_ref.T_ref = ((0 : stdgo.GoUInt64) : stdgo._internal.syscall.js.Js_t_ref.T_ref);
    public var _gcPtr : stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref> = (null : stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref>);
    @:local
    var value = (null : Dynamic);
    public function new(?__0:stdgo.GoArray<() -> Void>, ?_ref:stdgo._internal.syscall.js.Js_t_ref.T_ref, ?_gcPtr:stdgo.Pointer<stdgo._internal.syscall.js.Js_t_ref.T_ref>, ?value) {
        if (__0 != null) this.__0 = __0;
        if (_ref != null) this._ref = _ref;
        if (_gcPtr != null) this._gcPtr = _gcPtr;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, 0) }, optional : false }, { name : "_ref", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_t_refdott_ref.__type__stdgodot_internaldotsyscalldotjsdotJs_t_refdotT_ref }, optional : false }, { name : "_gcPtr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_t_refdott_ref.__type__stdgodot_internaldotsyscalldotjsdotJs_t_refdotT_ref }) }, optional : false }])));
    public function __copy__() {
        return new Value(__0, _ref, _gcPtr, value);
    }
}
