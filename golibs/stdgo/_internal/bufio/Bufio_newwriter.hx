package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L608"
        return stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(_w, (4096 : stdgo.GoInt));
    }
