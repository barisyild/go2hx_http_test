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
@:interface typedef CloseNotifier = stdgo.StructType & {
    /**
        * CloseNotify returns a channel that receives at most a
        * single value (true) when the client connection has gone
        * away.
        * 
        * CloseNotify may wait to notify until Request.Body has been
        * fully read.
        * 
        * After the Handler has returned, there is no guarantee
        * that the channel receives a value.
        * 
        * If the protocol is HTTP/1.1 and CloseNotify is called while
        * processing an idempotent request (such a GET) while
        * HTTP/1.1 pipelining is in use, the arrival of a subsequent
        * pipelined request may cause a value to be sent on the
        * returned channel. In practice HTTP/1.1 pipelining is not
        * enabled in browsers and not seen often in the wild. If this
        * is a problem, use HTTP/2 or only use CloseNotify on methods
        * such as POST.
        
        
    **/
    @:interfacetypeffun
    public dynamic function closeNotify():stdgo.Chan<Bool>;
};
