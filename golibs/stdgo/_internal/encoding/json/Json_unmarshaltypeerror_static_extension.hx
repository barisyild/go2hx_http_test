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
@:keep @:allow(stdgo._internal.encoding.json.Json.UnmarshalTypeError_asInterface) class UnmarshalTypeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_unmarshaltypeerror.UnmarshalTypeError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L134"
        if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_ != (stdgo.Go.str() : stdgo.GoString)) || ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).field != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L135"
            return (((((((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__() : stdgo.GoString) + (" into Go struct field " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).struct_?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).field?.__copy__() : stdgo.GoString) + (" of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L137"
        return (((("json: cannot unmarshal " : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value?.__copy__() : stdgo.GoString) + (" into Go value of type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
