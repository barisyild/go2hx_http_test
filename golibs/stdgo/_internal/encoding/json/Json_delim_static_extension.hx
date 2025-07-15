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
@:keep @:allow(stdgo._internal.encoding.json.Json.Delim_asInterface) class Delim_static_extension {
    @:keep
    @:tdfield
    static public function string( _d:stdgo._internal.encoding.json.Json_delim.Delim):stdgo.GoString {
        @:recv var _d:stdgo._internal.encoding.json.Json_delim.Delim = _d;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L353"
        return (_d : stdgo.GoString)?.__copy__();
    }
}
