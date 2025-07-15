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
function serveContent(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString, _modtime:stdgo._internal.time.Time_time.Time, _content:stdgo._internal.io.Io_readseeker.ReadSeeker):Void {
        var _sizeFunc = @:assignType (function():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
            var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (2 : stdgo.GoInt)), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L197"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L198"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errseeker._errSeeker };
            };
            {
                var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L201"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L202"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.net.http.Http__errseeker._errSeeker };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L204"
            return { _0 : _size, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; });
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L206"
        stdgo._internal.net.http.Http__servecontent._serveContent(_w, _req, _name?.__copy__(), _modtime?.__copy__(), _sizeFunc, _content);
    }
