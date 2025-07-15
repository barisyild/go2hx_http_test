package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newReadWriter(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter> {
        //"file:///Users/o/.go/go1.21.3/src/bufio/bufio.go#L841"
        return (stdgo.Go.setRef((new stdgo._internal.bufio.Bufio_readwriter.ReadWriter(_r, _w) : stdgo._internal.bufio.Bufio_readwriter.ReadWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readwriterdotreadwriter.__type__stdgodot_internaldotbufiodotBufio_readwriterdotReadWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>);
    }
