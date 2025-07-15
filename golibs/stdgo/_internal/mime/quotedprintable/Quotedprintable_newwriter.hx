package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L25"
        return (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotquotedprintabledotquotedprintable_writerdotwriter.__type__stdgodot_internaldotmimedotquotedprintabledotQuotedprintable_writerdotWriter })) : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>);
    }
