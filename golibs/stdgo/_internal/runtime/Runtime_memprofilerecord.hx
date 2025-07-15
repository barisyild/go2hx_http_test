package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_memprofilerecord_static_extension.MemProfileRecord_static_extension) @:using(stdgo._internal.runtime.Runtime_memprofilerecord_static_extension.MemProfileRecord_static_extension) class MemProfileRecord {
    public var allocBytes : stdgo.GoInt64 = 0;
    public var freeBytes : stdgo.GoInt64 = 0;
    public var allocObjects : stdgo.GoInt64 = 0;
    public var freeObjects : stdgo.GoInt64 = 0;
    public var stack0 : stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(32, 32);
    public function new(?allocBytes:stdgo.GoInt64, ?freeBytes:stdgo.GoInt64, ?allocObjects:stdgo.GoInt64, ?freeObjects:stdgo.GoInt64, ?stack0:stdgo.GoArray<stdgo.GoUIntptr>) {
        if (allocBytes != null) this.allocBytes = allocBytes;
        if (freeBytes != null) this.freeBytes = freeBytes;
        if (allocObjects != null) this.allocObjects = allocObjects;
        if (freeObjects != null) this.freeObjects = freeObjects;
        if (stack0 != null) this.stack0 = stack0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "allocBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "freeBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "allocObjects", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "freeObjects", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "stack0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, 32) }, optional : false }])));
    public function __copy__() {
        return new MemProfileRecord(allocBytes, freeBytes, allocObjects, freeObjects, stack0);
    }
}
