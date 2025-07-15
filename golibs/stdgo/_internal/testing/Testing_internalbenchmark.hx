package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_internalbenchmark_static_extension.InternalBenchmark_static_extension) @:using(stdgo._internal.testing.Testing_internalbenchmark_static_extension.InternalBenchmark_static_extension) class InternalBenchmark {
    public var name : stdgo.GoString = "";
    public var f : stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void = null;
    public function new(?name:stdgo.GoString, ?f:stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void) {
        if (name != null) this.name = name;
        if (f != null) this.f = f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_bdotb.__type__stdgodot_internaldottestingdotTesting_bdotB })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new InternalBenchmark(name, f);
    }
}
