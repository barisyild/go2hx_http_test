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
function _http2filterOutClientConn(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>, _exclude:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>> {
        var _out = (_in.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L987"
        if (_in != null) for (__12 => _v in _in) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L988"
            if (_v != (_exclude)) {
                _out = (_out.__append__(_v) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L994"
        if ((_in.length) != ((_out.length))) {
            _in[((_in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L997"
        return _out;
    }
