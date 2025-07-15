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
@:keep class Unmarshaler_static_extension {
    @:interfacetypeffun
    static public function unmarshalJSON(t:stdgo._internal.encoding.json.Json_unmarshaler.Unmarshaler, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return t.unmarshalJSON(_0);
}
