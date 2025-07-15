package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_rangetable_static_extension.RangeTable_static_extension) @:using(stdgo._internal.unicode.Unicode_rangetable_static_extension.RangeTable_static_extension) class RangeTable {
    public var r16 : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>);
    public var r32 : stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>);
    public var latinOffset : stdgo.GoInt = 0;
    public function new(?r16:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, ?r32:stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>, ?latinOffset:stdgo.GoInt) {
        if (r16 != null) this.r16 = r16;
        if (r32 != null) this.r32 = r32;
        if (latinOffset != null) this.latinOffset = latinOffset;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_range16dotrange16.__type__stdgodot_internaldotunicodedotUnicode_range16dotRange16 }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_range32dotrange32.__type__stdgodot_internaldotunicodedotUnicode_range32dotRange32 }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new RangeTable(r16, r32, latinOffset);
    }
}
