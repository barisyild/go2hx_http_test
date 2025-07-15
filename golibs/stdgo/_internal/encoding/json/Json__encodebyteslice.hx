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
function _encodeByteSlice(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, __2:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L780"
        if (_v.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L781"
            _e.writeString(("null" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L782"
            return;
        };
        var _s = _v.bytes();
        var _encodedLen = @:assignType (stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encodedLen((_s.length)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L786"
        _e.grow(((((("\"" : stdgo.GoString) : stdgo.GoString).length) + _encodedLen : stdgo.GoInt) + ((("\"" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt));
        var _b = _e.availableBuffer();
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L791"
        stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.encode(((_b.__slice__((_b.length)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, _encodedLen) : stdgo.Slice<stdgo.GoUInt8>), _s);
        _b = (_b.__slice__(0, ((_b.length) + _encodedLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((34 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L794"
        _e.write(_b);
    }
