package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_internalexample_static_extension.InternalExample_static_extension) @:using(stdgo._internal.testing.Testing_internalexample_static_extension.InternalExample_static_extension) class InternalExample {
    public var name : stdgo.GoString = "";
    public var f : () -> Void = null;
    public var output : stdgo.GoString = "";
    public var unordered : Bool = false;
    public function new(?name:stdgo.GoString, ?f:() -> Void, ?output:stdgo.GoString, ?unordered:Bool) {
        if (name != null) this.name = name;
        if (f != null) this.f = f;
        if (output != null) this.output = output;
        if (unordered != null) this.unordered = unordered;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "output", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "unordered", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new InternalExample(name, f, output, unordered);
    }
}
