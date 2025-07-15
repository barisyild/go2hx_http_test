package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
function _isWhitespace(_b:stdgo.GoUInt8):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L171"
        return ((_b == (32 : stdgo.GoUInt8)) || (_b == (9 : stdgo.GoUInt8)) : Bool);
    }
