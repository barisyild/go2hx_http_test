package stdgo._internal.internal.nettrace;
@:structInit @:using(stdgo._internal.internal.nettrace.Nettrace_trace_static_extension.Trace_static_extension) @:using(stdgo._internal.internal.nettrace.Nettrace_trace_static_extension.Trace_static_extension) class Trace {
    public var dNSStart : stdgo.GoString -> Void = null;
    public var dNSDone : (stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void = null;
    public var connectStart : (stdgo.GoString, stdgo.GoString) -> Void = null;
    public var connectDone : (stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void = null;
    public function new(?dNSStart:stdgo.GoString -> Void, ?dNSDone:(stdgo.Slice<stdgo.AnyInterface>, Bool, stdgo.Error) -> Void, ?connectStart:(stdgo.GoString, stdgo.GoString) -> Void, ?connectDone:(stdgo.GoString, stdgo.GoString, stdgo.Error) -> Void) {
        if (dNSStart != null) this.dNSStart = dNSStart;
        if (dNSDone != null) this.dNSDone = dNSDone;
        if (connectStart != null) this.connectStart = connectStart;
        if (connectDone != null) this.connectDone = connectDone;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "dNSStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "dNSDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }), stdgo._internal.internal.reflect.GoType.basic(bool_kind), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "connectStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "connectDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new Trace(dNSStart, dNSDone, connectStart, connectDone);
    }
}
