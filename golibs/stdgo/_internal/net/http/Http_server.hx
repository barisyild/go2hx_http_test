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
@:structInit @:using(stdgo._internal.net.http.Http_server_static_extension.Server_static_extension) @:using(stdgo._internal.net.http.Http_server_static_extension.Server_static_extension) class Server {
    public var addr : stdgo.GoString = "";
    public var handler : stdgo._internal.net.http.Http_handler.Handler = (null : stdgo._internal.net.http.Http_handler.Handler);
    public var disableGeneralOptionsHandler : Bool = false;
    public var tLSConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var readTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var readHeaderTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var writeTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var idleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var maxHeaderBytes : stdgo.GoInt = 0;
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>);
    public var connState : (stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void = null;
    public var errorLog : stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = (null : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
    public var baseContext : stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context = null;
    public var connContext : (stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context = null;
    public var _inShutdown : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _disableKeepAlives : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _nextProtoOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _nextProtoErr : stdgo.Error = (null : stdgo.Error);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _listeners : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, { }> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, { }>);
    public var _activeConn : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, { }> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, { }>);
    public var _onShutdown : stdgo.Slice<() -> Void> = (null : stdgo.Slice<() -> Void>);
    public var _listenerGroup : stdgo._internal.sync.Sync_waitgroup.WaitGroup = ({} : stdgo._internal.sync.Sync_waitgroup.WaitGroup);
    public function new(?addr:stdgo.GoString, ?handler:stdgo._internal.net.http.Http_handler.Handler, ?disableGeneralOptionsHandler:Bool, ?tLSConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?readTimeout:stdgo._internal.time.Time_duration.Duration, ?readHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?writeTimeout:stdgo._internal.time.Time_duration.Duration, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxHeaderBytes:stdgo.GoInt, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>, ?connState:(stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void, ?errorLog:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, ?baseContext:stdgo._internal.net.Net_listener.Listener -> stdgo._internal.context.Context_context.Context, ?connContext:(stdgo._internal.context.Context_context.Context, stdgo._internal.net.Net_conn.Conn) -> stdgo._internal.context.Context_context.Context, ?_inShutdown:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_disableKeepAlives:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_nextProtoOnce:stdgo._internal.sync.Sync_once.Once, ?_nextProtoErr:stdgo.Error, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_listeners:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.Net_listener.Listener>, { }>, ?_activeConn:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, { }>, ?_onShutdown:stdgo.Slice<() -> Void>, ?_listenerGroup:stdgo._internal.sync.Sync_waitgroup.WaitGroup) {
        if (addr != null) this.addr = addr;
        if (handler != null) this.handler = handler;
        if (disableGeneralOptionsHandler != null) this.disableGeneralOptionsHandler = disableGeneralOptionsHandler;
        if (tLSConfig != null) this.tLSConfig = tLSConfig;
        if (readTimeout != null) this.readTimeout = readTimeout;
        if (readHeaderTimeout != null) this.readHeaderTimeout = readHeaderTimeout;
        if (writeTimeout != null) this.writeTimeout = writeTimeout;
        if (idleTimeout != null) this.idleTimeout = idleTimeout;
        if (maxHeaderBytes != null) this.maxHeaderBytes = maxHeaderBytes;
        if (tLSNextProto != null) this.tLSNextProto = tLSNextProto;
        if (connState != null) this.connState = connState;
        if (errorLog != null) this.errorLog = errorLog;
        if (baseContext != null) this.baseContext = baseContext;
        if (connContext != null) this.connContext = connContext;
        if (_inShutdown != null) this._inShutdown = _inShutdown;
        if (_disableKeepAlives != null) this._disableKeepAlives = _disableKeepAlives;
        if (_nextProtoOnce != null) this._nextProtoOnce = _nextProtoOnce;
        if (_nextProtoErr != null) this._nextProtoErr = _nextProtoErr;
        if (_mu != null) this._mu = _mu;
        if (_listeners != null) this._listeners = _listeners;
        if (_activeConn != null) this._activeConn = _activeConn;
        if (_onShutdown != null) this._onShutdown = _onShutdown;
        if (_listenerGroup != null) this._listenerGroup = _listenerGroup;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "addr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "handler", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerdothandler.__type__stdgodot_internaldotnetdothttpdotHttp_handlerdotHandler }, optional : false },
{ name : "disableGeneralOptionsHandler", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "tLSConfig", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig }) }, optional : false },
{ name : "readTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "readHeaderTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "writeTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "idleTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "maxHeaderBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "tLSNextProto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerdothandler.__type__stdgodot_internaldotnetdothttpdotHttp_handlerdotHandler] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false },
{ name : "connState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_connstatedotconnstate.__type__stdgodot_internaldotnetdothttpdotHttp_connstatedotConnState] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "errorLog", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotlogdotlog_loggerdotlogger.__type__stdgodot_internaldotlogdotLog_loggerdotLogger }) }, optional : false },
{ name : "baseContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenerdotlistener.__type__stdgodot_internaldotnetdotNet_listenerdotListener] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "connContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_inShutdown", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false },
{ name : "_disableKeepAlives", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false },
{ name : "_nextProtoOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false },
{ name : "_nextProtoErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_listeners", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_listenerdotlistener.__type__stdgodot_internaldotnetdotNet_listenerdotListener }) }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_activeConn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_conndott_conn.__type__stdgodot_internaldotnetdothttpdotHttp_t_conndotT_conn }) }, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_onShutdown", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false },
{ name : "_listenerGroup", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_waitgroupdotwaitgroup.__type__stdgodot_internaldotsyncdotSync_waitgroupdotWaitGroup }, optional : false }])));
    public function __copy__() {
        return new Server(
addr,
handler,
disableGeneralOptionsHandler,
tLSConfig,
readTimeout,
readHeaderTimeout,
writeTimeout,
idleTimeout,
maxHeaderBytes,
tLSNextProto,
connState,
errorLog,
baseContext,
connContext,
_inShutdown,
_disableKeepAlives,
_nextProtoOnce,
_nextProtoErr,
_mu,
_listeners,
_activeConn,
_onShutdown,
_listenerGroup);
    }
}
