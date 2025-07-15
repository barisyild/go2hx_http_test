package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
function newChunkedWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writecloser.WriteCloser {
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L191"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter(_w) : stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_t_chunkedwriterdott_chunkedwriter.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_t_chunkedwriterdotT_chunkedWriter })) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedwriter.T_chunkedWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_t_chunkedwriterdott_chunkedwriter.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_t_chunkedwriterdotT_chunkedWriter }));
    }
