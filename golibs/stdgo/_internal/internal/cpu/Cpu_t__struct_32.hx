package stdgo._internal.internal.cpu;
@:local @:using(stdgo._internal.internal.cpu.Cpu_t__struct_32_static_extension.T__struct_32_static_extension) @:using(stdgo._internal.internal.cpu.Cpu_t__struct_32_static_extension.T__struct_32_static_extension) @:using(stdgo._internal.internal.cpu.Cpu_t__struct_32_static_extension.T__struct_32_static_extension) typedef T__struct_32 = {
    @:optional
    public var __0 : stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad;
    public var hasAES : Bool;
    public var hasPMULL : Bool;
    public var hasSHA1 : Bool;
    public var hasSHA2 : Bool;
    public var hasSHA512 : Bool;
    public var hasCRC32 : Bool;
    public var hasATOMICS : Bool;
    public var hasCPUID : Bool;
    public var isNeoverse : Bool;
    @:optional
    public var __1 : stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad;
};
