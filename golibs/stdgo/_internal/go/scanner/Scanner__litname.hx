package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function _litname(_prefix:stdgo.GoInt32):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L501"
        {
            final __value__ = _prefix;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L503"
                return ("hexadecimal literal" : stdgo.GoString);
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((48 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L505"
                return ("octal literal" : stdgo.GoString);
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L507"
                return ("binary literal" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L509"
        return ("decimal literal" : stdgo.GoString);
    }
