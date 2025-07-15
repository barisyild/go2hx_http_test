package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newReader(_rd:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L63"
        return stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(_rd, (4096 : stdgo.GoInt));
    }
