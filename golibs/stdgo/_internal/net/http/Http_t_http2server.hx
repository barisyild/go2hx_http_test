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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2server_static_extension.T_http2Server_static_extension) @:using(stdgo._internal.net.http.Http_t_http2server_static_extension.T_http2Server_static_extension) class T_http2Server {
    public var maxHandlers : stdgo.GoInt = 0;
    public var maxConcurrentStreams : stdgo.GoUInt32 = 0;
    public var maxDecoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxEncoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxReadFrameSize : stdgo.GoUInt32 = 0;
    public var permitProhibitedCipherSuites : Bool = false;
    public var idleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var maxUploadBufferPerConnection : stdgo.GoInt32 = 0;
    public var maxUploadBufferPerStream : stdgo.GoInt32 = 0;
    public var newWriteScheduler : () -> stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler = null;
    public var countError : stdgo.GoString -> Void = null;
    public var _state : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>);
    public function new(?maxHandlers:stdgo.GoInt, ?maxConcurrentStreams:stdgo.GoUInt32, ?maxDecoderHeaderTableSize:stdgo.GoUInt32, ?maxEncoderHeaderTableSize:stdgo.GoUInt32, ?maxReadFrameSize:stdgo.GoUInt32, ?permitProhibitedCipherSuites:Bool, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxUploadBufferPerConnection:stdgo.GoInt32, ?maxUploadBufferPerStream:stdgo.GoInt32, ?newWriteScheduler:() -> stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, ?countError:stdgo.GoString -> Void, ?_state:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>) {
        if (maxHandlers != null) this.maxHandlers = maxHandlers;
        if (maxConcurrentStreams != null) this.maxConcurrentStreams = maxConcurrentStreams;
        if (maxDecoderHeaderTableSize != null) this.maxDecoderHeaderTableSize = maxDecoderHeaderTableSize;
        if (maxEncoderHeaderTableSize != null) this.maxEncoderHeaderTableSize = maxEncoderHeaderTableSize;
        if (maxReadFrameSize != null) this.maxReadFrameSize = maxReadFrameSize;
        if (permitProhibitedCipherSuites != null) this.permitProhibitedCipherSuites = permitProhibitedCipherSuites;
        if (idleTimeout != null) this.idleTimeout = idleTimeout;
        if (maxUploadBufferPerConnection != null) this.maxUploadBufferPerConnection = maxUploadBufferPerConnection;
        if (maxUploadBufferPerStream != null) this.maxUploadBufferPerStream = maxUploadBufferPerStream;
        if (newWriteScheduler != null) this.newWriteScheduler = newWriteScheduler;
        if (countError != null) this.countError = countError;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "maxHandlers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "maxConcurrentStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxDecoderHeaderTableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxEncoderHeaderTableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "maxReadFrameSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "permitProhibitedCipherSuites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "idleTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "maxUploadBufferPerConnection", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false },
{ name : "maxUploadBufferPerStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false },
{ name : "newWriteScheduler", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeschedulerdott_http2writescheduler.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeschedulerdotT_http2WriteScheduler] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "countError", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverinternalstatedott_http2serverinternalstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverinternalstatedotT_http2serverInternalState }) }, optional : false }])));
    public function __copy__() {
        return new T_http2Server(
maxHandlers,
maxConcurrentStreams,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
maxReadFrameSize,
permitProhibitedCipherSuites,
idleTimeout,
maxUploadBufferPerConnection,
maxUploadBufferPerStream,
newWriteScheduler,
countError,
_state);
    }
}
