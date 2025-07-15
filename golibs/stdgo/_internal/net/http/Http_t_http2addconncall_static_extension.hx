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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2addConnCall_asInterface) class T_http2addConnCall_static_extension {
    @:keep
    @:tdfield
    static public function _run( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>, _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _key:stdgo.GoString, _tc:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall> = _c;
        var __tmp__ = _t.newClientConn(stdgo.Go.asInterface(_tc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn }))), _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _p = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L922"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L923"
        if (_err != null) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        } else {
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._getConnCalled = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L927"
            _p._addConnLocked(_key?.__copy__(), _cc);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L929"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addConnCalls.__remove__(_key);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L930"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L931"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done != null) (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__close__();
    }
}
