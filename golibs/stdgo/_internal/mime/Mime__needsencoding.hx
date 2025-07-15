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
function _needsEncoding(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L43"
        if (_s != null) for (__0 => _b in _s) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L44"
            if (((((_b < (32 : stdgo.GoInt32) : Bool) || (_b > (126 : stdgo.GoInt32) : Bool) : Bool)) && (_b != (9 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L45"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L48"
        return false;
    }
