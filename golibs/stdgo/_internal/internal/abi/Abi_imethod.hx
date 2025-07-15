package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_imethod_static_extension.Imethod_static_extension) @:using(stdgo._internal.internal.abi.Abi_imethod_static_extension.Imethod_static_extension) class Imethod {
    public var name : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var typ : stdgo._internal.internal.abi.Abi_typeoff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?typ:stdgo._internal.internal.abi.Abi_typeoff.TypeOff) {
        if (name != null) this.name = name;
        if (typ != null) this.typ = typ;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_nameoffdotnameoff.__type__stdgodot_internaldotinternaldotabidotAbi_nameoffdotNameOff }, optional : false }, { name : "typ", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_typeoffdottypeoff.__type__stdgodot_internaldotinternaldotabidotAbi_typeoffdotTypeOff }, optional : false }])));
    public function __copy__() {
        return new Imethod(name, typ);
    }
}
