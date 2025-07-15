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
function newReader(_r:stdgo._internal.io.Io_reader.Reader, _boundary:stdgo.GoString):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> {
        var _b = (((("\r\n--" : stdgo.GoString) + _boundary?.__copy__() : stdgo.GoString) + ("--" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/mime/multipart/multipart.go#L121"
        return (stdgo.Go.setRef(({ _bufReader : stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(stdgo.Go.asInterface((stdgo.Go.setRef(({ _r : _r } : stdgo._internal.mime.multipart.Multipart_t_stickyerrorreader.T_stickyErrorReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_t_stickyerrorreaderdott_stickyerrorreader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_t_stickyerrorreaderdotT_stickyErrorReader })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_stickyerrorreader.T_stickyErrorReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_t_stickyerrorreaderdott_stickyerrorreader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_t_stickyerrorreaderdotT_stickyErrorReader })), (4096 : stdgo.GoInt)), _nl : (_b.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nlDashBoundary : (_b.__slice__(0, ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _dashBoundaryDash : (_b.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _dashBoundary : (_b.__slice__((2 : stdgo.GoInt), ((_b.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.mime.multipart.Multipart_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_readerdotreader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_readerdotReader })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>);
    }
