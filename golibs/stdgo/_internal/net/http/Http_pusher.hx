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
@:interface typedef Pusher = stdgo.StructType & {
    /**
        * Push initiates an HTTP/2 server push. This constructs a synthetic
        * request using the given target and options, serializes that request
        * into a PUSH_PROMISE frame, then dispatches that request using the
        * server's request handler. If opts is nil, default options are used.
        * 
        * The target must either be an absolute path (like "/path") or an absolute
        * URL that contains a valid host and the same scheme as the parent request.
        * If the target is a path, it will inherit the scheme and host of the
        * parent request.
        * 
        * The HTTP/2 spec disallows recursive pushes and cross-authority pushes.
        * Push may or may not detect these invalid pushes; however, invalid
        * pushes will be detected and canceled by conforming clients.
        * 
        * Handlers that wish to push URL X should call Push before sending any
        * data that may trigger a request for URL X. This avoids a race where the
        * client issues requests for X before receiving the PUSH_PROMISE for X.
        * 
        * Push will run in a separate goroutine making the order of arrival
        * non-deterministic. Any required synchronization needs to be implemented
        * by the caller.
        * 
        * Push returns ErrNotSupported if the client has disabled push or if push
        * is not supported on the underlying connection.
        
        
    **/
    @:interfacetypeffun
    public dynamic function push(_target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error;
};
