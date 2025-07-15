package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function newOffsetWriter(_w:stdgo._internal.io.Io_writerat.WriterAt, _off:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter> {
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L571"
        return (stdgo.Go.setRef((new stdgo._internal.io.Io_offsetwriter.OffsetWriter(_w, _off, _off) : stdgo._internal.io.Io_offsetwriter.OffsetWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_offsetwriterdotoffsetwriter.__type__stdgodot_internaldotiodotIo_offsetwriterdotOffsetWriter })) : stdgo.Ref<stdgo._internal.io.Io_offsetwriter.OffsetWriter>);
    }
