package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
function _isQPDiscardWhitespace(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L58"
        {
            final __value__ = _r;
            if (__value__ == ((10 : stdgo.GoInt32)) || __value__ == ((13 : stdgo.GoInt32)) || __value__ == ((32 : stdgo.GoInt32)) || __value__ == ((9 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L60"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L62"
        return false;
    }
