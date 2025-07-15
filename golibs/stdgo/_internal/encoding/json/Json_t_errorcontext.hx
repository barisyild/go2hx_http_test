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
@:structInit @:using(stdgo._internal.encoding.json.Json_t_errorcontext_static_extension.T_errorContext_static_extension) @:using(stdgo._internal.encoding.json.Json_t_errorcontext_static_extension.T_errorContext_static_extension) class T_errorContext {
    public var struct_ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var fieldStack : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?struct_:stdgo._internal.reflect.Reflect_type_.Type_, ?fieldStack:stdgo.Slice<stdgo.GoString>) {
        if (struct_ != null) this.struct_ = struct_;
        if (fieldStack != null) this.fieldStack = fieldStack;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "struct_", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "fieldStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_errorContext(struct_, fieldStack);
    }
}
