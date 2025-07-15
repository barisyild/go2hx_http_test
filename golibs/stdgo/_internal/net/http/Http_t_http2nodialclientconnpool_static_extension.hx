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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noDialClientConnPool_asInterface) class T_http2noDialClientConnPool_static_extension {
    @:keep
    @:tdfield
    static public function getClientConn( _p:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1006"
        return _p._getClientConn(_req, _addr?.__copy__(), false);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _getStartDialLocked( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> return @:_5 __self__._getStartDialLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _getClientConn( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo.GoString, _2:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_5 __self__._getClientConn(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _closeIdleConnections( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool):Void return @:_5 __self__._closeIdleConnections();
    @:embedded
    @:embeddededffieldsffun
    public static function _addConnLocked( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void return @:_5 __self__._addConnLocked(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _addConnIfNeeded( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.GoString, _1:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _2:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_5 __self__._addConnIfNeeded(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function markDead( __self__:stdgo._internal.net.http.Http_t_http2nodialclientconnpool.T_http2noDialClientConnPool, _0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void return @:_5 __self__.markDead(_0);
}
