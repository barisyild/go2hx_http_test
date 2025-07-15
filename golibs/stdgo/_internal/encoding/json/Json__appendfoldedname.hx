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
function _appendFoldedName(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L21"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_in.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L23"
                {
                    var _c = @:assignType (_in[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L24"
                        if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                            _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        };
                        _out = (_out.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L28"
                        _i++;
                        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L29"
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_in.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                _out = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_out, stdgo._internal.encoding.json.Json__foldrune._foldRune(_r));
                _i = (_i + (_n) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L36"
        return _out;
    }
