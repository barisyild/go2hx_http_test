package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_internalfuzztarget_static_extension.InternalFuzzTarget_static_extension) @:using(stdgo._internal.testing.Testing_internalfuzztarget_static_extension.InternalFuzzTarget_static_extension) class InternalFuzzTarget {
    public var name : stdgo.GoString = "";
    public var fn : stdgo.Ref<stdgo._internal.testing.Testing_f.F> -> Void = null;
    public function new(?name:stdgo.GoString, ?fn:stdgo.Ref<stdgo._internal.testing.Testing_f.F> -> Void) {
        if (name != null) this.name = name;
        if (fn != null) this.fn = fn;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "fn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_fdotf.__type__stdgodot_internaldottestingdotTesting_fdotF })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new InternalFuzzTarget(name, fn);
    }
}
