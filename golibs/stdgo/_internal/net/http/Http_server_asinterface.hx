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
class Server_asInterface {
    @:keep
    public dynamic function _onceSetNextProtoDefaults():Void @:_0 __self__.value._onceSetNextProtoDefaults();
    @:keep
    public dynamic function _onceSetNextProtoDefaults_Serve():Void @:_0 __self__.value._onceSetNextProtoDefaults_Serve();
    @:keep
    public dynamic function _setupHTTP2_Serve():stdgo.Error return @:_0 __self__.value._setupHTTP2_Serve();
    @:keep
    public dynamic function _setupHTTP2_ServeTLS():stdgo.Error return @:_0 __self__.value._setupHTTP2_ServeTLS();
    @:keep
    public dynamic function listenAndServeTLS(_certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.listenAndServeTLS(_certFile, _keyFile);
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function setKeepAlivesEnabled(_v:Bool):Void @:_0 __self__.value.setKeepAlivesEnabled(_v);
    @:keep
    public dynamic function _shuttingDown():Bool return @:_0 __self__.value._shuttingDown();
    @:keep
    public dynamic function _doKeepAlives():Bool return @:_0 __self__.value._doKeepAlives();
    @:keep
    public dynamic function _readHeaderTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._readHeaderTimeout();
    @:keep
    public dynamic function _idleTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._idleTimeout();
    @:keep
    public dynamic function _trackConn(_c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, _add:Bool):Void @:_0 __self__.value._trackConn(_c, _add);
    @:keep
    public dynamic function _trackListener(_ln:stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, _add:Bool):Bool return @:_0 __self__.value._trackListener(_ln, _add);
    @:keep
    public dynamic function serveTLS(_l:stdgo._internal.net.Net_listener.Listener, _certFile:stdgo.GoString, _keyFile:stdgo.GoString):stdgo.Error return @:_0 __self__.value.serveTLS(_l, _certFile, _keyFile);
    @:keep
    public dynamic function serve(_l:stdgo._internal.net.Net_listener.Listener):stdgo.Error return @:_0 __self__.value.serve(_l);
    @:keep
    public dynamic function _shouldConfigureHTTP2ForServe():Bool return @:_0 __self__.value._shouldConfigureHTTP2ForServe();
    @:keep
    public dynamic function listenAndServe():stdgo.Error return @:_0 __self__.value.listenAndServe();
    @:keep
    public dynamic function _closeListenersLocked():stdgo.Error return @:_0 __self__.value._closeListenersLocked();
    @:keep
    public dynamic function _closeIdleConns():Bool return @:_0 __self__.value._closeIdleConns();
    @:keep
    public dynamic function registerOnShutdown(_f:() -> Void):Void @:_0 __self__.value.registerOnShutdown(_f);
    @:keep
    public dynamic function shutdown(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.shutdown(_ctx);
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function _tlsHandshakeTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._tlsHandshakeTimeout();
    @:keep
    public dynamic function _initialReadLimitSize():stdgo.GoInt64 return @:_0 __self__.value._initialReadLimitSize();
    @:keep
    public dynamic function _maxHeaderBytes():stdgo.GoInt return @:_0 __self__.value._maxHeaderBytes();
    @:keep
    public dynamic function _newConn(_rwc:stdgo._internal.net.Net_conn.Conn):stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> return @:_0 __self__.value._newConn(_rwc);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_serverpointer.ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
