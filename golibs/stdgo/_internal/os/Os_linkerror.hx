package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_linkerror_static_extension.LinkError_static_extension) @:using(stdgo._internal.os.Os_linkerror_static_extension.LinkError_static_extension) class LinkError {
    public var op : stdgo.GoString = "";
    public var old : stdgo.GoString = "";
    public var new_ : stdgo.GoString = "";
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?op:stdgo.GoString, ?old:stdgo.GoString, ?new_:stdgo.GoString, ?err:stdgo.Error) {
        if (op != null) this.op = op;
        if (old != null) this.old = old;
        if (new_ != null) this.new_ = new_;
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "op", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "old", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "new_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new LinkError(op, old, new_, err);
    }
}
