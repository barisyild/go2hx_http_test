package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function _isDecimal(_ch:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L378"
        return (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool);
    }
