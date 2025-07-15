package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.encoding.json.Json_unmarshaltypeerror_static_extension.UnmarshalTypeError_static_extension) @:using(stdgo._internal.encoding.json.Json_unmarshaltypeerror_static_extension.UnmarshalTypeError_static_extension) class UnmarshalTypeError {
    public var value : stdgo.GoString = "";
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var offset : stdgo.GoInt64 = 0;
    public var struct_ : stdgo.GoString = "";
    public var field : stdgo.GoString = "";
    public function new(?value:stdgo.GoString, ?type:stdgo._internal.reflect.Reflect_type_.Type_, ?offset:stdgo.GoInt64, ?struct_:stdgo.GoString, ?field:stdgo.GoString) {
        if (value != null) this.value = value;
        if (type != null) this.type = type;
        if (offset != null) this.offset = offset;
        if (struct_ != null) this.struct_ = struct_;
        if (field != null) this.field = field;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "struct_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "field", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new UnmarshalTypeError(value, type, offset, struct_, field);
    }
}
