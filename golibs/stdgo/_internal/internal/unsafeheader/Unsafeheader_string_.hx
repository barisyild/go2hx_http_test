package stdgo._internal.internal.unsafeheader;
@:structInit @:using(stdgo._internal.internal.unsafeheader.Unsafeheader_string__static_extension.String__static_extension) @:using(stdgo._internal.internal.unsafeheader.Unsafeheader_string__static_extension.String__static_extension) class String_ {
    public var data : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var len : stdgo.GoInt = 0;
    public function new(?data:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?len:stdgo.GoInt) {
        if (data != null) this.data = data;
        if (len != null) this.len = len;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new String_(data, len);
    }
}
