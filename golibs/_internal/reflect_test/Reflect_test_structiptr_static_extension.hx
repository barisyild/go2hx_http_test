package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.StructIPtr_asInterface) class StructIPtr_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<_internal.reflect_test.Reflect_test_structiptr.StructIPtr>, _v:stdgo.GoInt):Void {
        new stdgo.Pointer<stdgo.GoInt>(() -> (_i.value : stdgo.GoInt), v -> (_i.value = (v : _internal.reflect_test.Reflect_test_structiptr.StructIPtr) : stdgo.GoInt)).value = _v;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<_internal.reflect_test.Reflect_test_structiptr.StructIPtr>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5720"
        return (_i.value : stdgo.GoInt);
    }
}
