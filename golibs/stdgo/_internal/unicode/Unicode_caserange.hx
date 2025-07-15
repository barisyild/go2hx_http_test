package stdgo._internal.unicode;
@:structInit @:using(stdgo._internal.unicode.Unicode_caserange_static_extension.CaseRange_static_extension) @:using(stdgo._internal.unicode.Unicode_caserange_static_extension.CaseRange_static_extension) class CaseRange {
    public var lo : stdgo.GoUInt32 = 0;
    public var hi : stdgo.GoUInt32 = 0;
    public var delta : stdgo._internal.unicode.Unicode_t_d.T_d = new stdgo._internal.unicode.Unicode_t_d.T_d(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoInt32)]);
    public function new(?lo:stdgo.GoUInt32, ?hi:stdgo.GoUInt32, ?delta:stdgo._internal.unicode.Unicode_t_d.T_d) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (delta != null) this.delta = delta;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "delta", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_t_ddott_d.__type__stdgodot_internaldotunicodedotUnicode_t_ddotT_d }, optional : false }])));
    public function __copy__() {
        return new CaseRange(lo, hi, delta);
    }
}
