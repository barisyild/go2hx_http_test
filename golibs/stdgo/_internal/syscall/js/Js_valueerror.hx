package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_valueerror_static_extension.ValueError_static_extension) @:using(stdgo._internal.syscall.js.Js_valueerror_static_extension.ValueError_static_extension) class ValueError {
    public var method : stdgo.GoString = "";
    public var type : stdgo._internal.syscall.js.Js_type_.Type_ = ((0 : stdgo.GoInt) : stdgo._internal.syscall.js.Js_type_.Type_);
    public function new(?method:stdgo.GoString, ?type:stdgo._internal.syscall.js.Js_type_.Type_) {
        if (method != null) this.method = method;
        if (type != null) this.type = type;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_type_dottype_.__type__stdgodot_internaldotsyscalldotjsdotJs_type_dotType_ }, optional : false }])));
    public function __copy__() {
        return new ValueError(method, type);
    }
}
