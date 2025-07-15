package stdgo._internal.internal.cpu;
@:structInit @:using(stdgo._internal.internal.cpu.Cpu_t_option_static_extension.T_option_static_extension) @:using(stdgo._internal.internal.cpu.Cpu_t_option_static_extension.T_option_static_extension) class T_option {
    public var name : stdgo.GoString = "";
    public var feature : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var specified : Bool = false;
    public var enable : Bool = false;
    public function new(?name:stdgo.GoString, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) {
        if (name != null) this.name = name;
        if (feature != null) this.feature = feature;
        if (specified != null) this.specified = specified;
        if (enable != null) this.enable = enable;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "feature", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }, { name : "specified", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "enable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_option(name, feature, specified, enable);
    }
}
