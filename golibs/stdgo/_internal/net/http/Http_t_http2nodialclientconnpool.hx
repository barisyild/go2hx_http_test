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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension) @:using(stdgo._internal.net.http.Http_t_http2nodialclientconnpool_static_extension.T_http2noDialClientConnPool_static_extension) class T_http2noDialClientConnPool {
    @:embedded
    public var _http2clientConnPool : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>);
    public function new(?_http2clientConnPool:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>) {
        if (_http2clientConnPool != null) this._http2clientConnPool = _http2clientConnPool;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_http2clientConnPool", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2clientConnPool }) }, optional : false }])));
    public var markDead(get, never) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_markDead():stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> -> Void return @:check32 this._http2clientConnPool.markDead;
    public var _addConnIfNeeded(get, never) : (stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> { var _0 : Bool; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__addConnIfNeeded():(stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> { var _0 : Bool; var _1 : stdgo.Error; } return @:check32 this._http2clientConnPool._addConnIfNeeded;
    public var _addConnLocked(get, never) : (stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__addConnLocked():(stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>) -> Void return @:check32 this._http2clientConnPool._addConnLocked;
    public var _closeIdleConnections(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__closeIdleConnections():() -> Void return @:check32 this._http2clientConnPool._closeIdleConnections;
    public var _getClientConn(get, never) : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__getClientConn():(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoString, Bool) -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:check32 this._http2clientConnPool._getClientConn;
    public var _getStartDialLocked(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__getStartDialLocked():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> return @:check32 this._http2clientConnPool._getStartDialLocked;
    public function __copy__() {
        return new T_http2noDialClientConnPool(_http2clientConnPool);
    }
}
