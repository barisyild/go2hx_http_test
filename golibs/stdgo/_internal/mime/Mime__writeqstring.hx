package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _writeQString(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _s:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L145"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L146"
                {
                    var _b = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_b == ((32 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L148"
                        _buf.writeByte((95 : stdgo.GoUInt8));
                    } else if ((((((_b >= (33 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && _b != ((61 : stdgo.GoUInt8)) : Bool) && _b != ((63 : stdgo.GoUInt8)) : Bool) && (_b != (95 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L150"
                        _buf.writeByte(_b);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L152"
                        _buf.writeByte((61 : stdgo.GoUInt8));
                        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L153"
                        _buf.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]);
                        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L154"
                        _buf.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]);
                    };
                };
                _i++;
            };
        };
    }
