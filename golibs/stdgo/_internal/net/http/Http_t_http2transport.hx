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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension) @:using(stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension) class T_http2Transport {
    public var dialTLSContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLS : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var connPool : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool = (null : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool);
    public var disableCompression : Bool = false;
    public var allowHTTP : Bool = false;
    public var maxHeaderListSize : stdgo.GoUInt32 = 0;
    public var maxReadFrameSize : stdgo.GoUInt32 = 0;
    public var maxDecoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxEncoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var strictMaxConcurrentStreams : Bool = false;
    public var readIdleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var pingTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var writeByteTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var countError : stdgo.GoString -> Void = null;
    public var _t1 : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
    public var _connPoolOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _connPoolOrDef : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool = (null : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool);
    public function new(?dialTLSContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?connPool:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, ?disableCompression:Bool, ?allowHTTP:Bool, ?maxHeaderListSize:stdgo.GoUInt32, ?maxReadFrameSize:stdgo.GoUInt32, ?maxDecoderHeaderTableSize:stdgo.GoUInt32, ?maxEncoderHeaderTableSize:stdgo.GoUInt32, ?strictMaxConcurrentStreams:Bool, ?readIdleTimeout:stdgo._internal.time.Time_duration.Duration, ?pingTimeout:stdgo._internal.time.Time_duration.Duration, ?writeByteTimeout:stdgo._internal.time.Time_duration.Duration, ?countError:stdgo.GoString -> Void, ?_t1:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, ?_connPoolOnce:stdgo._internal.sync.Sync_once.Once, ?_connPoolOrDef:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool) {
        if (dialTLSContext != null) this.dialTLSContext = dialTLSContext;
        if (dialTLS != null) this.dialTLS = dialTLS;
        if (tLSClientConfig != null) this.tLSClientConfig = tLSClientConfig;
        if (connPool != null) this.connPool = connPool;
        if (disableCompression != null) this.disableCompression = disableCompression;
        if (allowHTTP != null) this.allowHTTP = allowHTTP;
        if (maxHeaderListSize != null) this.maxHeaderListSize = maxHeaderListSize;
        if (maxReadFrameSize != null) this.maxReadFrameSize = maxReadFrameSize;
        if (maxDecoderHeaderTableSize != null) this.maxDecoderHeaderTableSize = maxDecoderHeaderTableSize;
        if (maxEncoderHeaderTableSize != null) this.maxEncoderHeaderTableSize = maxEncoderHeaderTableSize;
        if (strictMaxConcurrentStreams != null) this.strictMaxConcurrentStreams = strictMaxConcurrentStreams;
        if (readIdleTimeout != null) this.readIdleTimeout = readIdleTimeout;
        if (pingTimeout != null) this.pingTimeout = pingTimeout;
        if (writeByteTimeout != null) this.writeByteTimeout = writeByteTimeout;
        if (countError != null) this.countError = countError;
        if (_t1 != null) this._t1 = _t1;
        if (_connPoolOnce != null) this._connPoolOnce = _connPoolOnce;
        if (_connPoolOrDef != null) this._connPoolOrDef = _connPoolOrDef;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "dialTLSContext", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext, stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "dialTLS", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "tLSClientConfig", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig }) }, optional : false },
{ name : "connPool", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2ClientConnPool }, optional : false },
{ name : "disableCompression", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "allowHTTP", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "maxHeaderListSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxReadFrameSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxDecoderHeaderTableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxEncoderHeaderTableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "strictMaxConcurrentStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "readIdleTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "pingTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "writeByteTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "countError", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_t1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_transportdottransport.__type__stdgodot_internaldotnetdothttpdotHttp_transportdotTransport }) }, optional : false },
{ name : "_connPoolOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false },
{ name : "_connPoolOrDef", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2ClientConnPool }, optional : false }])));
    public function __copy__() {
        return new T_http2Transport(
dialTLSContext,
dialTLS,
tLSClientConfig,
connPool,
disableCompression,
allowHTTP,
maxHeaderListSize,
maxReadFrameSize,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
strictMaxConcurrentStreams,
readIdleTimeout,
pingTimeout,
writeByteTimeout,
countError,
_t1,
_connPoolOnce,
_connPoolOrDef);
    }
}
