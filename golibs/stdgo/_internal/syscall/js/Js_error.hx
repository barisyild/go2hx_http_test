package stdgo._internal.syscall.js;
@:structInit @:using(stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension) @:using(stdgo._internal.syscall.js.Js_error_static_extension.Error_static_extension) class Error {
    @:embedded
    public var value : stdgo._internal.syscall.js.Js_value.Value = ({} : stdgo._internal.syscall.js.Js_value.Value);
    public function new(?value:stdgo._internal.syscall.js.Js_value.Value) {
        if (value != null) this.value = value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "value", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue }, optional : false }])));
    public var bool_(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_bool_():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bool_;
    public var call(get, never) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_call():(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).call;
    public var delete(get, never) : stdgo.GoString -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_delete():stdgo.GoString -> Void return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).delete;
    public var equal(get, never) : stdgo._internal.syscall.js.Js_value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_equal():stdgo._internal.syscall.js.Js_value.Value -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).equal;
    public var float_(get, never) : () -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_float_():() -> stdgo.GoFloat64 return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).float_;
    public var get(get, never) : stdgo.GoString -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_get():stdgo.GoString -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).get;
    public var index(get, never) : stdgo.GoInt -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_index():stdgo.GoInt -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).index;
    public var instanceOf(get, never) : stdgo._internal.syscall.js.Js_value.Value -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_instanceOf():stdgo._internal.syscall.js.Js_value.Value -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).instanceOf;
    public var int_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_int_():() -> stdgo.GoInt return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).int_;
    public var invoke(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_invoke():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).invoke;
    public var isNaN(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isNaN():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isNaN;
    public var isNull(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isNull():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isNull;
    public var isUndefined(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isUndefined():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isUndefined;
    public var length_(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_length_():() -> stdgo.GoInt return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_;
    public var new_(get, never) : haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_new_():haxe.Rest<stdgo.AnyInterface> -> stdgo._internal.syscall.js.Js_value.Value return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).new_;
    public var set(get, never) : (stdgo.GoString, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_set():(stdgo.GoString, stdgo.AnyInterface) -> Void return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).set;
    public var setIndex(get, never) : (stdgo.GoInt, stdgo.AnyInterface) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setIndex():(stdgo.GoInt, stdgo.AnyInterface) -> Void return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).setIndex;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).string;
    public var truthy(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_truthy():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truthy;
    public var type(get, never) : () -> stdgo._internal.syscall.js.Js_type_.Type_;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.syscall.js.Js_type_.Type_ return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type;
    public var _float(get, never) : stdgo.GoString -> stdgo.GoFloat64;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__float():stdgo.GoString -> stdgo.GoFloat64 return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__())._float;
    public var _isNumber(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__isNumber():() -> Bool return @:check31 (this.value ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isNumber;
    public function __copy__() {
        return new Error(value);
    }
}
