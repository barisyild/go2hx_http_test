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
function _readHexByte(_a:stdgo.GoUInt8, _b:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        var _hb:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _lb:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L394"
        {
            {
                var __tmp__ = stdgo._internal.mime.Mime__fromhex._fromHex(_a);
                _hb = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L395"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L397"
        {
            {
                var __tmp__ = stdgo._internal.mime.Mime__fromhex._fromHex(_b);
                _lb = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L398"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L400"
        return { _0 : ((_hb << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | _lb : stdgo.GoUInt8), _1 : (null : stdgo.Error) };
    }
