package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function decodedLen(_x:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L68"
        return (_x / (2 : stdgo.GoInt) : stdgo.GoInt);
    }
