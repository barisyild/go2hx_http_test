package stdgo._internal.mime.multipart;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.mime.quotedprintable.Quotedprintable;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.Mime;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.sort.Sort;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer> {
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/writer.go#L28"
        return (stdgo.Go.setRef(({ _w : _w, _boundary : stdgo._internal.mime.multipart.Multipart__randomboundary._randomBoundary()?.__copy__() } : stdgo._internal.mime.multipart.Multipart_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_writerdotwriter.__type__stdgodot_internaldotmimedotmultipartdotMultipart_writerdotWriter })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_writer.Writer>);
    }
