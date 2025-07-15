package stdgo._internal.internal.godebug;
@:structInit @:using(stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension) @:using(stdgo._internal.internal.godebug.Godebug_setting_static_extension.Setting_static_extension) class Setting {
    public var _name : stdgo.GoString = "";
    public var _once : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    @:embedded
    public var _setting : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting> = (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>);
    public function new(?_name:stdgo.GoString, ?_once:stdgo._internal.sync.Sync_once.Once, ?_setting:stdgo.Ref<stdgo._internal.internal.godebug.Godebug_t_setting.T_setting>) {
        if (_name != null) this._name = _name;
        if (_once != null) this._once = _once;
        if (_setting != null) this._setting = _setting;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_once", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_setting", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotgodebugdotgodebug_t_settingdott_setting.__type__stdgodot_internaldotinternaldotgodebugdotGodebug_t_settingdotT_setting }) }, optional : false }])));
    public function __copy__() {
        return new Setting(_name, _once, _setting);
    }
}
