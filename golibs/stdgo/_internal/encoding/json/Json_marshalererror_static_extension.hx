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
@:keep @:allow(stdgo._internal.encoding.json.Json.MarshalerError_asInterface) class MarshalerError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L246"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_marshalererror.MarshalerError> = _e;
        var _srcFunc = @:assignType ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sourceFunc?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L237"
        if (_srcFunc == ((stdgo.Go.str() : stdgo.GoString))) {
            _srcFunc = ("MarshalJSON" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L240"
        return (((((("json: error calling " : stdgo.GoString) + _srcFunc?.__copy__() : stdgo.GoString) + (" for type " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
