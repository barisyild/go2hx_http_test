package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_cover_static_extension.Cover_static_extension) @:using(stdgo._internal.testing.Testing_cover_static_extension.Cover_static_extension) class Cover {
    public var mode : stdgo.GoString = "";
    public var counters : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>);
    public var blocks : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>>);
    public var coveredPackages : stdgo.GoString = "";
    public function new(?mode:stdgo.GoString, ?counters:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoUInt32>>, ?blocks:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.testing.Testing_coverblock.CoverBlock>>, ?coveredPackages:stdgo.GoString) {
        if (mode != null) this.mode = mode;
        if (counters != null) this.counters = counters;
        if (blocks != null) this.blocks = blocks;
        if (coveredPackages != null) this.coveredPackages = coveredPackages;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "mode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "counters", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }) }) }, optional : false }, { name : "blocks", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_coverblockdotcoverblock.__type__stdgodot_internaldottestingdotTesting_coverblockdotCoverBlock }) }) }, optional : false }, { name : "coveredPackages", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Cover(mode, counters, blocks, coveredPackages);
    }
}
