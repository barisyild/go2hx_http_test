package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_stackrecord_static_extension.StackRecord_static_extension) @:using(stdgo._internal.runtime.Runtime_stackrecord_static_extension.StackRecord_static_extension) class StackRecord {
    public var stack0 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32);
    public function new(?stack0:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (stack0 != null) this.stack0 = stack0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "stack0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, 32) }, optional : false }])));
    public function __copy__() {
        return new StackRecord(stack0);
    }
}
