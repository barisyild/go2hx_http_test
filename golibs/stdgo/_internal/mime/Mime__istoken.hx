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
function _isToken(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/grammar.go#L28"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/grammar.go#L29"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/grammar.go#L31"
        return (stdgo._internal.strings.Strings_indexfunc.indexFunc(_s?.__copy__(), stdgo._internal.mime.Mime__isnottokenchar._isNotTokenChar) < (0 : stdgo.GoInt) : Bool);
    }
