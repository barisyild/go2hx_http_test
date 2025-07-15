package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_blockprofilerecord_static_extension.BlockProfileRecord_static_extension) @:using(stdgo._internal.runtime.Runtime_blockprofilerecord_static_extension.BlockProfileRecord_static_extension) class BlockProfileRecord {
    public var count : stdgo.GoInt64 = 0;
    public var cycles : stdgo.GoInt64 = 0;
    @:embedded
    public var stackRecord : stdgo._internal.runtime.Runtime_stackrecord.StackRecord = ({} : stdgo._internal.runtime.Runtime_stackrecord.StackRecord);
    public function new(?count:stdgo.GoInt64, ?cycles:stdgo.GoInt64, ?stackRecord:stdgo._internal.runtime.Runtime_stackrecord.StackRecord) {
        if (count != null) this.count = count;
        if (cycles != null) this.cycles = cycles;
        if (stackRecord != null) this.stackRecord = stackRecord;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "count", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "cycles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "stackRecord", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_stackrecorddotstackrecord.__type__stdgodot_internaldotruntimedotRuntime_stackrecorddotStackRecord }, optional : false }])));
    public var stack(get, never) : () -> stdgo.Slice<stdgo.GoUIntptr>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_stack():() -> stdgo.Slice<stdgo.GoUIntptr> return @:check32 this.stackRecord.stack;
    public function __copy__() {
        return new BlockProfileRecord(count, cycles, stackRecord);
    }
}
