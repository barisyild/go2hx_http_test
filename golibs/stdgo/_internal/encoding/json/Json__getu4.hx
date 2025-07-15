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
function _getu4(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1151"
        if (((((_s.length) < (6 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != (117 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1152"
            return (-1 : stdgo.GoInt32);
        };
        var _r:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1155"
        if ((_s.__slice__((2 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) != null) for (__2 => _c in (_s.__slice__((2 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1156"
            if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = (_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = ((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                _c = ((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1164"
                return (-1 : stdgo.GoInt32);
            };
            _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + (_c : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/decode.go#L1168"
        return _r;
    }
