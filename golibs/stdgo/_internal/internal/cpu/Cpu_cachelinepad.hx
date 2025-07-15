package stdgo._internal.internal.cpu;
@:structInit @:using(stdgo._internal.internal.cpu.Cpu_cachelinepad_static_extension.CacheLinePad_static_extension) @:using(stdgo._internal.internal.cpu.Cpu_cachelinepad_static_extension.CacheLinePad_static_extension) class CacheLinePad {
    @:optional
    public var __0 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public function new(?__0:stdgo.GoArray<stdgo.GoUInt8>) {
        if (__0 != null) this.__0 = __0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 64) }, optional : false }])));
    public function __copy__() {
        return new CacheLinePad(__0);
    }
}
