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
function _hasNonWhitespace(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L349"
        if (_s != null) for (__0 => _b in _s) {
            //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L350"
            {
                final __value__ = _b;
                if (__value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32))) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L355"
                    return true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L358"
        return false;
    }
