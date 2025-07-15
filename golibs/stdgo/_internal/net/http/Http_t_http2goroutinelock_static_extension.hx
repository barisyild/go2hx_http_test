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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2goroutineLock_asInterface) class T_http2goroutineLock_static_extension {
    @:keep
    @:tdfield
    static public function _checkNotOn( _g:stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock):Void {
        @:recv var _g:stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock = _g;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3117"
        if (!stdgo._internal.net.http.Http__http2debuggoroutines._http2DebugGoroutines) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3118"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3120"
        if (stdgo._internal.net.http.Http__http2curgoroutineid._http2curGoroutineID() == ((_g : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3121"
            throw new stdgo.AnyInterface(("running on the wrong goroutine" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
    @:keep
    @:tdfield
    static public function _check( _g:stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock):Void {
        @:recv var _g:stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock = _g;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3108"
        if (!stdgo._internal.net.http.Http__http2debuggoroutines._http2DebugGoroutines) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3109"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3111"
        if (stdgo._internal.net.http.Http__http2curgoroutineid._http2curGoroutineID() != ((_g : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3112"
            throw new stdgo.AnyInterface(("running on the wrong goroutine" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
}
