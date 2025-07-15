package stdgo._internal.internal.reflectlite;
@:structInit @:using(stdgo._internal.internal.reflectlite.Reflectlite_valueerror_static_extension.ValueError_static_extension) @:using(stdgo._internal.internal.reflectlite.Reflectlite_valueerror_static_extension.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var kind : stdgo._internal.internal.abi.Abi_kind.Kind = ((0 : stdgo.GoUInt) : stdgo._internal.internal.abi.Abi_kind.Kind);
    public function new(?method:stdgo.GoString, ?kind:stdgo._internal.internal.abi.Abi_kind.Kind) {
        if (method != null) this.method = method;
        if (kind != null) this.kind = kind;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "kind", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotabidotabi_kinddotkind.__type__stdgodot_internaldotinternaldotabidotAbi_kinddotKind }, optional : false }])));
    public function __copy__() {
        return new ValueError(method, kind);
    }
}
