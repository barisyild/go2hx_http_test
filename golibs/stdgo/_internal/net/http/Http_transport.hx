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
@:structInit @:using(stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension) @:using(stdgo._internal.net.http.Http_transport_static_extension.Transport_static_extension) class Transport {
    public var _idleMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _closeIdle : Bool = false;
    public var _idleConn : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>));
    public var _idleConnWait : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>));
    public var _idleLRU : stdgo._internal.net.http.Http_t_connlru.T_connLRU = ({} : stdgo._internal.net.http.Http_t_connlru.T_connLRU);
    public var _reqMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _reqCanceler : stdgo.GoMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void>));
    public var _altMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _altProto : stdgo._internal.sync.atomic_.Atomic__value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__value.Value);
    public var _connsPerHostMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _connsPerHost : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt>));
    public var _connsPerHostWait : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>));
    public var proxy : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } = null;
    public var onProxyConnectResponse : (stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) -> stdgo.Error = null;
    public var dialContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dial : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLSContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLS : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var tLSHandshakeTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var disableKeepAlives : Bool = false;
    public var disableCompression : Bool = false;
    public var maxIdleConns : stdgo.GoInt = 0;
    public var maxIdleConnsPerHost : stdgo.GoInt = 0;
    public var maxConnsPerHost : stdgo.GoInt = 0;
    public var idleConnTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var responseHeaderTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var expectContinueTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var tLSNextProto : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper> = (null : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
    public var proxyConnectHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var getProxyConnectHeader : (stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_header.Header; var _1 : stdgo.Error; } = null;
    public var maxResponseHeaderBytes : stdgo.GoInt64 = 0;
    public var writeBufferSize : stdgo.GoInt = 0;
    public var readBufferSize : stdgo.GoInt = 0;
    public var _nextProtoOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _h2transport : stdgo._internal.net.http.Http_t_h2transport.T_h2Transport = (null : stdgo._internal.net.http.Http_t_h2transport.T_h2Transport);
    public var _tlsNextProtoWasNil : Bool = false;
    public var forceAttemptHTTP2 : Bool = false;
    public function new(?_idleMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closeIdle:Bool, ?_idleConn:stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>, ?_idleConnWait:stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>, ?_idleLRU:stdgo._internal.net.http.Http_t_connlru.T_connLRU, ?_reqMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_reqCanceler:stdgo.GoMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void>, ?_altMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_altProto:stdgo._internal.sync.atomic_.Atomic__value.Value, ?_connsPerHostMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_connsPerHost:stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt>, ?_connsPerHostWait:stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>, ?proxy:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> { var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; }, ?onProxyConnectResponse:(stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) -> stdgo.Error, ?dialContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dial:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLSContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?tLSHandshakeTimeout:stdgo._internal.time.Time_duration.Duration, ?disableKeepAlives:Bool, ?disableCompression:Bool, ?maxIdleConns:stdgo.GoInt, ?maxIdleConnsPerHost:stdgo.GoInt, ?maxConnsPerHost:stdgo.GoInt, ?idleConnTimeout:stdgo._internal.time.Time_duration.Duration, ?responseHeaderTimeout:stdgo._internal.time.Time_duration.Duration, ?expectContinueTimeout:stdgo._internal.time.Time_duration.Duration, ?tLSNextProto:stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>, ?proxyConnectHeader:stdgo._internal.net.http.Http_header.Header, ?getProxyConnectHeader:(stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, stdgo.GoString) -> { var _0 : stdgo._internal.net.http.Http_header.Header; var _1 : stdgo.Error; }, ?maxResponseHeaderBytes:stdgo.GoInt64, ?writeBufferSize:stdgo.GoInt, ?readBufferSize:stdgo.GoInt, ?_nextProtoOnce:stdgo._internal.sync.Sync_once.Once, ?_h2transport:stdgo._internal.net.http.Http_t_h2transport.T_h2Transport, ?_tlsNextProtoWasNil:Bool, ?forceAttemptHTTP2:Bool) {
        if (_idleMu != null) this._idleMu = _idleMu;
        if (_closeIdle != null) this._closeIdle = _closeIdle;
        if (_idleConn != null) this._idleConn = _idleConn;
        if (_idleConnWait != null) this._idleConnWait = _idleConnWait;
        if (_idleLRU != null) this._idleLRU = _idleLRU;
        if (_reqMu != null) this._reqMu = _reqMu;
        if (_reqCanceler != null) this._reqCanceler = _reqCanceler;
        if (_altMu != null) this._altMu = _altMu;
        if (_altProto != null) this._altProto = _altProto;
        if (_connsPerHostMu != null) this._connsPerHostMu = _connsPerHostMu;
        if (_connsPerHost != null) this._connsPerHost = _connsPerHost;
        if (_connsPerHostWait != null) this._connsPerHostWait = _connsPerHostWait;
        if (proxy != null) this.proxy = proxy;
        if (onProxyConnectResponse != null) this.onProxyConnectResponse = onProxyConnectResponse;
        if (dialContext != null) this.dialContext = dialContext;
        if (dial != null) this.dial = dial;
        if (dialTLSContext != null) this.dialTLSContext = dialTLSContext;
        if (dialTLS != null) this.dialTLS = dialTLS;
        if (tLSClientConfig != null) this.tLSClientConfig = tLSClientConfig;
        if (tLSHandshakeTimeout != null) this.tLSHandshakeTimeout = tLSHandshakeTimeout;
        if (disableKeepAlives != null) this.disableKeepAlives = disableKeepAlives;
        if (disableCompression != null) this.disableCompression = disableCompression;
        if (maxIdleConns != null) this.maxIdleConns = maxIdleConns;
        if (maxIdleConnsPerHost != null) this.maxIdleConnsPerHost = maxIdleConnsPerHost;
        if (maxConnsPerHost != null) this.maxConnsPerHost = maxConnsPerHost;
        if (idleConnTimeout != null) this.idleConnTimeout = idleConnTimeout;
        if (responseHeaderTimeout != null) this.responseHeaderTimeout = responseHeaderTimeout;
        if (expectContinueTimeout != null) this.expectContinueTimeout = expectContinueTimeout;
        if (tLSNextProto != null) this.tLSNextProto = tLSNextProto;
        if (proxyConnectHeader != null) this.proxyConnectHeader = proxyConnectHeader;
        if (getProxyConnectHeader != null) this.getProxyConnectHeader = getProxyConnectHeader;
        if (maxResponseHeaderBytes != null) this.maxResponseHeaderBytes = maxResponseHeaderBytes;
        if (writeBufferSize != null) this.writeBufferSize = writeBufferSize;
        if (readBufferSize != null) this.readBufferSize = readBufferSize;
        if (_nextProtoOnce != null) this._nextProtoOnce = _nextProtoOnce;
        if (_h2transport != null) this._h2transport = _h2transport;
        if (_tlsNextProtoWasNil != null) this._tlsNextProtoWasNil = _tlsNextProtoWasNil;
        if (forceAttemptHTTP2 != null) this.forceAttemptHTTP2 = forceAttemptHTTP2;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_idleMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_closeIdle", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_idleConn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn }) }) }) }, optional : false },
{ name : "_idleConnWait", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_wantconnqueuedott_wantconnqueue.__type__stdgodot_internaldotnetdothttpdotHttp_t_wantconnqueuedotT_wantConnQueue }) }, optional : false },
{ name : "_idleLRU", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connlrudott_connlru.__type__stdgodot_internaldotnetdothttpdotHttp_t_connlrudotT_connLRU }, optional : false },
{ name : "_reqMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_reqCanceler", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_cancelkeydott_cancelkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_cancelkeydotT_cancelKey }, { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false },
{ name : "_altMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_altProto", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__valuedotvalue.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__valuedotValue }, optional : false },
{ name : "_connsPerHostMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_connsPerHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false },
{ name : "_connsPerHostWait", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_wantconnqueuedott_wantconnqueue.__type__stdgodot_internaldotnetdothttpdotHttp_t_wantconnqueuedotT_wantConnQueue }) }, optional : false },
{ name : "proxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "onProxyConnectResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dialContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dial", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dialTLSContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dialTLS", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "tLSClientConfig", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig }) }, optional : false },
{ name : "tLSHandshakeTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "disableKeepAlives", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "disableCompression", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxIdleConns", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxIdleConnsPerHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxConnsPerHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "idleConnTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "responseHeaderTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "expectContinueTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "tLSNextProto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false },
{ name : "proxyConnectHeader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "getProxyConnectHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "maxResponseHeaderBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "writeBufferSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "readBufferSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_nextProtoOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false },
{ name : "_h2transport", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_h2transportdott_h2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_h2transportdotT_h2Transport }, optional : false },
{ name : "_tlsNextProtoWasNil", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceAttemptHTTP2", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Transport(
_idleMu,
_closeIdle,
_idleConn,
_idleConnWait,
_idleLRU,
_reqMu,
_reqCanceler,
_altMu,
_altProto,
_connsPerHostMu,
_connsPerHost,
_connsPerHostWait,
proxy,
onProxyConnectResponse,
dialContext,
dial,
dialTLSContext,
dialTLS,
tLSClientConfig,
tLSHandshakeTimeout,
disableKeepAlives,
disableCompression,
maxIdleConns,
maxIdleConnsPerHost,
maxConnsPerHost,
idleConnTimeout,
responseHeaderTimeout,
expectContinueTimeout,
tLSNextProto,
proxyConnectHeader,
getProxyConnectHeader,
maxResponseHeaderBytes,
writeBufferSize,
readBufferSize,
_nextProtoOnce,
_h2transport,
_tlsNextProtoWasNil,
forceAttemptHTTP2);
    }
}
