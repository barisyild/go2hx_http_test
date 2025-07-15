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
@:keep @:allow(stdgo._internal.encoding.json.Json.RawMessage_asInterface) class RawMessage_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalJSON( _m:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = _m;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L270"
        if (({
            final value = _m;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L271"
            return stdgo._internal.errors.Errors_new_.new_(("json.RawMessage: UnmarshalJSON on nil pointer" : stdgo.GoString));
        };
        @:_1 (_m : stdgo._internal.encoding.json.Json_rawmessage.RawMessage).__setData__(((((_m : stdgo._internal.encoding.json.Json_rawmessage.RawMessage)).__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage).__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage));
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L274"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalJSON( _m:stdgo._internal.encoding.json.Json_rawmessage.RawMessage):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo._internal.encoding.json.Json_rawmessage.RawMessage = _m;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L262"
        if (_m == null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L263"
            return { _0 : ((("null" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/stream.go#L265"
        return { _0 : _m, _1 : (null : stdgo.Error) };
    }
}
