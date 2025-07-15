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
@:structInit @:using(stdgo._internal.encoding.json.Json_marshalererror_static_extension.MarshalerError_static_extension) @:using(stdgo._internal.encoding.json.Json_marshalererror_static_extension.MarshalerError_static_extension) class MarshalerError {
    public var type : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var _sourceFunc : stdgo.GoString = "";
    public function new(?type:stdgo._internal.reflect.Reflect_type_.Type_, ?err:stdgo.Error, ?_sourceFunc:stdgo.GoString) {
        if (type != null) this.type = type;
        if (err != null) this.err = err;
        if (_sourceFunc != null) this._sourceFunc = _sourceFunc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_sourceFunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new MarshalerError(type, err, _sourceFunc);
    }
}
