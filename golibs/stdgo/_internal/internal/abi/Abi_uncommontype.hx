package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_uncommontype_static_extension.UncommonType_static_extension) @:using(stdgo._internal.internal.abi.Abi_uncommontype_static_extension.UncommonType_static_extension) class UncommonType {
    public var pkgPath : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var mcount : stdgo.GoUInt16 = 0;
    public var xcount : stdgo.GoUInt16 = 0;
    public var moff : stdgo.GoUInt32 = 0;
    @:optional
    public var __0 : stdgo.GoUInt32 = 0;
    public function new(?pkgPath:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?mcount:stdgo.GoUInt16, ?xcount:stdgo.GoUInt16, ?moff:stdgo.GoUInt32, ?__0:stdgo.GoUInt32) {
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (mcount != null) this.mcount = mcount;
        if (xcount != null) this.xcount = xcount;
        if (moff != null) this.moff = moff;
        if (__0 != null) this.__0 = __0;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "pkgPath", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_nameoffdotnameoff.__type__stdgodot_internaldotinternaldotabidotAbi_nameoffdotNameOff }, optional : false }, { name : "mcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "xcount", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "moff", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new UncommonType(pkgPath, mcount, xcount, moff, __0);
    }
}
