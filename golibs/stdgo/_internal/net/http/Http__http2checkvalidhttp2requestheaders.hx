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
function _http2checkValidHTTP2RequestHeaders(_h:stdgo._internal.net.http.Http_header.Header):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7063"
        if (stdgo._internal.net.http.Http__http2connheaders._http2connHeaders != null) for (__12 => _k in stdgo._internal.net.http.Http__http2connheaders._http2connHeaders) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7064"
            {
                var __tmp__ = (_h != null && _h.__exists__(_k?.__copy__()) ? { _0 : _h[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __13:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7065"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("request header %q is not valid in HTTP/2" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
        var _te = (_h[("Te" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7069"
        if ((((_te.length) > (0 : stdgo.GoInt) : Bool) && ((((_te.length) > (1 : stdgo.GoInt) : Bool) || (((_te[(0 : stdgo.GoInt)] != ("trailers" : stdgo.GoString)) && (_te[(0 : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7070"
            return stdgo._internal.errors.Errors_new_.new_(("request header \"TE\" may only be \"trailers\" in HTTP/2" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7072"
        return (null : stdgo.Error);
    }
