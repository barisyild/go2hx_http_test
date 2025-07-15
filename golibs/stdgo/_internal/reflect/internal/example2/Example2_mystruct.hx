package stdgo._internal.reflect.internal.example2;
@:structInit @:using(stdgo._internal.reflect.internal.example2.Example2_mystruct_static_extension.MyStruct_static_extension) @:using(stdgo._internal.reflect.internal.example2.Example2_mystruct_static_extension.MyStruct_static_extension) class MyStruct {
    public var myStructs : stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct> = (null : stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>);
    public var myStruct : stdgo.Ref<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct> = (null : stdgo.Ref<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>);
    public function new(?myStructs:stdgo.Slice<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>, ?myStruct:stdgo.Ref<stdgo._internal.reflect.internal.example2.Example2_mystruct.MyStruct>) {
        if (myStructs != null) this.myStructs = myStructs;
        if (myStruct != null) this.myStruct = myStruct;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "myStructs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample2dotexample2_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample2dotExample2_mystructdotMyStruct }) }, optional : false }, { name : "myStruct", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotinternaldotexample2dotexample2_mystructdotmystruct.__type__stdgodot_internaldotreflectdotinternaldotexample2dotExample2_mystructdotMyStruct }) }, optional : false }])));
    public function __copy__() {
        return new MyStruct(myStructs, myStruct);
    }
}
