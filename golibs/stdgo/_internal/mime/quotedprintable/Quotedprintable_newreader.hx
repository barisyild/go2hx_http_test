package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader> {
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L25"
        return (stdgo.Go.setRef(({ _br : stdgo._internal.bufio.Bufio_newreader.newReader(_r) } : stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotquotedprintabledotquotedprintable_readerdotreader.__type__stdgodot_internaldotmimedotquotedprintabledotQuotedprintable_readerdotReader })) : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader>);
    }
