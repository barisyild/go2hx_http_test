package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_stringheader_static_extension.StringHeader_static_extension) @:using(stdgo._internal.reflect.Reflect_stringheader_static_extension.StringHeader_static_extension) class StringHeader {
    public var data : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public var len : stdgo.GoInt = 0;
    public function new(?data:stdgo.GoUIntptr, ?len:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new StringHeader(data, len);
    }
}
