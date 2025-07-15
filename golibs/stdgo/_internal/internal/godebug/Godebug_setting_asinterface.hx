package stdgo._internal.internal.godebug;
class Setting_asInterface {
    @:keep
    public dynamic function value():stdgo.GoString return @:_0 __self__.value.value();
    @:keep
    public dynamic function _register():Void @:_0 __self__.value._register();
    @:keep
    public dynamic function incNonDefault():Void @:_0 __self__.value.incNonDefault();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function undocumented():Bool return @:_0 __self__.value.undocumented();
    @:keep
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.godebug.Godebug_settingpointer.SettingPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
