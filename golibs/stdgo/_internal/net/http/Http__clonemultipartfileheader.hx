package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
function _cloneMultipartFileHeader(_fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader> {
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L57"
        if (({
            final value = _fh;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L58"
            return null;
        };
        var _fh2 = (stdgo.Go.setRef(({} : stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_fileheaderdotfileheader.__type__stdgodot_internaldotmimedotmultipartdotMultipart_fileheaderdotFileHeader })) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>);
        {
            var __tmp__ = (_fh : stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader)?.__copy__();
            var x = (_fh2 : stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader);
            x.filename = __tmp__?.filename;
            x.header = __tmp__?.header;
            x.size = __tmp__?.size;
            x._content = __tmp__?._content;
            x._tmpfile = __tmp__?._tmpfile;
            x._tmpoff = __tmp__?._tmpoff;
            x._tmpshared = __tmp__?._tmpshared;
        };
        (@:checkr _fh2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (((@:checkr _fh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header : stdgo._internal.net.http.Http_header.Header).clone() : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L63"
        return _fh2;
    }
