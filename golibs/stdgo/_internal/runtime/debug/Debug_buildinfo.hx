package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_buildinfo_static_extension.BuildInfo_static_extension) @:using(stdgo._internal.runtime.debug.Debug_buildinfo_static_extension.BuildInfo_static_extension) class BuildInfo {
    public var goVersion : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var __Main : stdgo._internal.runtime.debug.Debug_module.Module = ({} : stdgo._internal.runtime.debug.Debug_module.Module);
    public var deps : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>>);
    public var settings : stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting> = (null : stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting>);
    public function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?__Main:stdgo._internal.runtime.debug.Debug_module.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting>) {
        if (goVersion != null) this.goVersion = goVersion;
        if (path != null) this.path = path;
        if (__Main != null) this.__Main = __Main;
        if (deps != null) this.deps = deps;
        if (settings != null) this.settings = settings;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "goVersion", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "__Main", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotdebugdotdebug_moduledotmodule.__type__stdgodot_internaldotruntimedotdebugdotDebug_moduledotModule }, optional : false }, { name : "deps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotdebugdotdebug_moduledotmodule.__type__stdgodot_internaldotruntimedotdebugdotDebug_moduledotModule }) }) }, optional : false }, { name : "settings", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotdebugdotdebug_buildsettingdotbuildsetting.__type__stdgodot_internaldotruntimedotdebugdotDebug_buildsettingdotBuildSetting }) }, optional : false }])));
    public function __copy__() {
        return new BuildInfo(goVersion, path, __Main, deps, settings);
    }
}
