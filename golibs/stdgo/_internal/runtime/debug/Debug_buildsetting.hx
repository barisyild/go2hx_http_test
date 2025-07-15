package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_buildsetting_static_extension.BuildSetting_static_extension) @:using(stdgo._internal.runtime.debug.Debug_buildsetting_static_extension.BuildSetting_static_extension) class BuildSetting {
    public var key : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public function new(?key:stdgo.GoString, ?value:stdgo.GoString) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "key", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new BuildSetting(key, value);
    }
}
