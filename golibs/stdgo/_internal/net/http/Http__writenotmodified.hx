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
function _writeNotModified(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter):Void {
        var _h = @:assignType (_w.header() : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L558"
        if (_h != null) _h.__remove__(("Content-Type" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L559"
        if (_h != null) _h.__remove__(("Content-Length" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L560"
        if (_h != null) _h.__remove__(("Content-Encoding" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L561"
        if (_h.get(("Etag" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L562"
            if (_h != null) _h.__remove__(("Last-Modified" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L564"
        _w.writeHeader((304 : stdgo.GoInt));
    }
