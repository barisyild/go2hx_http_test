package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newScanner(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner> {
        //"file:///Users/o/.go/go1.21.3/src/bufio/scan.go#L88"
        return (stdgo.Go.setRef(({ _r : _r, _split : stdgo._internal.bufio.Bufio_scanlines.scanLines, _maxTokenSize : (65536 : stdgo.GoInt) } : stdgo._internal.bufio.Bufio_scanner.Scanner), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_scannerdotscanner.__type__stdgodot_internaldotbufiodotBufio_scannerdotScanner })) : stdgo.Ref<stdgo._internal.bufio.Bufio_scanner.Scanner>);
    }
