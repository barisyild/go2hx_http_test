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
@:keep @:allow(stdgo._internal.encoding.json.Json.InvalidUnmarshalError_asInterface) class InvalidUnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_invalidunmarshalerror.InvalidUnmarshalError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L161"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type == null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L162"
            return ("json: Unmarshal(nil)" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L165"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L166"
            return ((("json: Unmarshal(non-pointer " : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L168"
        return ((("json: Unmarshal(nil " : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
