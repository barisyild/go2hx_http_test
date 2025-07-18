package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_module_static_extension.Module_static_extension) @:using(stdgo._internal.runtime.debug.Debug_module_static_extension.Module_static_extension) class Module {
    public var path : stdgo.GoString = "";
    public var version : stdgo.GoString = "";
    public var sum : stdgo.GoString = "";
    public var replace : stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module> = (null : stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>);
    public function new(?path:stdgo.GoString, ?version:stdgo.GoString, ?sum:stdgo.GoString, ?replace:stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>) {
        if (path != null) this.path = path;
        if (version != null) this.version = version;
        if (sum != null) this.sum = sum;
        if (replace != null) this.replace = replace;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "version", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "sum", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "replace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotdebugdotdebug_moduledotmodule.__type__stdgodot_internaldotruntimedotdebugdotDebug_moduledotModule }) }, optional : false }])));
    public function __copy__() {
        return new Module(path, version, sum, replace);
    }
}
