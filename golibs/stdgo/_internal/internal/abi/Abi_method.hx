package stdgo._internal.internal.abi;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.internal.abi.Abi_method_static_extension.Method_static_extension) @:using(stdgo._internal.internal.abi.Abi_method_static_extension.Method_static_extension) class Method {
    public var name : stdgo._internal.internal.abi.Abi_nameoff.NameOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_nameoff.NameOff);
    public var mtyp : stdgo._internal.internal.abi.Abi_typeoff.TypeOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_typeoff.TypeOff);
    public var ifn : stdgo._internal.internal.abi.Abi_textoff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_textoff.TextOff);
    public var tfn : stdgo._internal.internal.abi.Abi_textoff.TextOff = ((0 : stdgo.GoInt32) : stdgo._internal.internal.abi.Abi_textoff.TextOff);
    public function new(?name:stdgo._internal.internal.abi.Abi_nameoff.NameOff, ?mtyp:stdgo._internal.internal.abi.Abi_typeoff.TypeOff, ?ifn:stdgo._internal.internal.abi.Abi_textoff.TextOff, ?tfn:stdgo._internal.internal.abi.Abi_textoff.TextOff) {
        if (name != null) this.name = name;
        if (mtyp != null) this.mtyp = mtyp;
        if (ifn != null) this.ifn = ifn;
        if (tfn != null) this.tfn = tfn;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_nameoffdotnameoff.__type__stdgodot_internaldotinternaldotabidotAbi_nameoffdotNameOff }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_typeoffdottypeoff.__type__stdgodot_internaldotinternaldotabidotAbi_typeoffdotTypeOff }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_textoffdottextoff.__type__stdgodot_internaldotinternaldotabidotAbi_textoffdotTextOff }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_textoffdottextoff.__type__stdgodot_internaldotinternaldotabidotAbi_textoffdotTextOff }, optional : false }])));
    public function __copy__() {
        return new Method(name, mtyp, ifn, tfn);
    }
}
