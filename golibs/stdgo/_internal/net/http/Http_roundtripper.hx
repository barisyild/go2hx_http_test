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
@:interface typedef RoundTripper = stdgo.StructType & {
    /**
        * RoundTrip executes a single HTTP transaction, returning
        * a Response for the provided Request.
        * 
        * RoundTrip should not attempt to interpret the response. In
        * particular, RoundTrip must return err == nil if it obtained
        * a response, regardless of the response's HTTP status code.
        * A non-nil err should be reserved for failure to obtain a
        * response. Similarly, RoundTrip should not attempt to
        * handle higher-level protocol details such as redirects,
        * authentication, or cookies.
        * 
        * RoundTrip should not modify the request, except for
        * consuming and closing the Request's Body. RoundTrip may
        * read fields of the request in a separate goroutine. Callers
        * should not mutate or reuse the request until the Response's
        * Body has been closed.
        * 
        * RoundTrip must always close the body, including on errors,
        * but depending on the implementation may do so in a separate
        * goroutine even after RoundTrip returns. This means that
        * callers wanting to reuse the body for subsequent requests
        * must arrange to wait for the Close call before doing so.
        * 
        * The Request's URL and Header fields must be initialized.
        
        
    **/
    @:interfacetypeffun
    public dynamic function roundTrip(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; };
};
