package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_hmap_static_extension.T_hmap_static_extension) @:using(stdgo._internal.runtime.Runtime_t_hmap_static_extension.T_hmap_static_extension) class T_hmap {
    public var b : stdgo.GoUInt8 = 0;
    public function new(?b:stdgo.GoUInt8) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "b", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new T_hmap(b);
    }
}
