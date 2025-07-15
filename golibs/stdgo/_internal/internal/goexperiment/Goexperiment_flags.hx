package stdgo._internal.internal.goexperiment;
@:structInit @:using(stdgo._internal.internal.goexperiment.Goexperiment_flags_static_extension.Flags_static_extension) @:using(stdgo._internal.internal.goexperiment.Goexperiment_flags_static_extension.Flags_static_extension) class Flags {
    public var fieldTrack : Bool = false;
    public var preemptibleLoops : Bool = false;
    public var staticLockRanking : Bool = false;
    public var boringCrypto : Bool = false;
    public var regabiWrappers : Bool = false;
    public var regabiArgs : Bool = false;
    public var heapMinimum512KiB : Bool = false;
    public var coverageRedesign : Bool = false;
    public var arenas : Bool = false;
    public var pageTrace : Bool = false;
    public var cgoCheck2 : Bool = false;
    public var loopVar : Bool = false;
    public var cacheProg : Bool = false;
    public function new(?fieldTrack:Bool, ?preemptibleLoops:Bool, ?staticLockRanking:Bool, ?boringCrypto:Bool, ?regabiWrappers:Bool, ?regabiArgs:Bool, ?heapMinimum512KiB:Bool, ?coverageRedesign:Bool, ?arenas:Bool, ?pageTrace:Bool, ?cgoCheck2:Bool, ?loopVar:Bool, ?cacheProg:Bool) {
        if (fieldTrack != null) this.fieldTrack = fieldTrack;
        if (preemptibleLoops != null) this.preemptibleLoops = preemptibleLoops;
        if (staticLockRanking != null) this.staticLockRanking = staticLockRanking;
        if (boringCrypto != null) this.boringCrypto = boringCrypto;
        if (regabiWrappers != null) this.regabiWrappers = regabiWrappers;
        if (regabiArgs != null) this.regabiArgs = regabiArgs;
        if (heapMinimum512KiB != null) this.heapMinimum512KiB = heapMinimum512KiB;
        if (coverageRedesign != null) this.coverageRedesign = coverageRedesign;
        if (arenas != null) this.arenas = arenas;
        if (pageTrace != null) this.pageTrace = pageTrace;
        if (cgoCheck2 != null) this.cgoCheck2 = cgoCheck2;
        if (loopVar != null) this.loopVar = loopVar;
        if (cacheProg != null) this.cacheProg = cacheProg;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "fieldTrack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "preemptibleLoops", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "staticLockRanking", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "boringCrypto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "regabiWrappers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "regabiArgs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "heapMinimum512KiB", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "coverageRedesign", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "arenas", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "pageTrace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "cgoCheck2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "loopVar", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "cacheProg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Flags(
fieldTrack,
preemptibleLoops,
staticLockRanking,
boringCrypto,
regabiWrappers,
regabiArgs,
heapMinimum512KiB,
coverageRedesign,
arenas,
pageTrace,
cgoCheck2,
loopVar,
cacheProg);
    }
}
