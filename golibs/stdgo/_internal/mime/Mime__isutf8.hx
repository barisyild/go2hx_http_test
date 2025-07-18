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
function _isUTF8(_charset:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L181"
        return stdgo._internal.strings.Strings_equalfold.equalFold(_charset?.__copy__(), ("UTF-8" : stdgo.GoString));
    }
