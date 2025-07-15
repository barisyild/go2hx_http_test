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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2stream_static_extension.T_http2stream_static_extension) @:using(stdgo._internal.net.http.Http_t_http2stream_static_extension.T_http2stream_static_extension) class T_http2stream {
    public var _sc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
    public var _id : stdgo.GoUInt32 = 0;
    public var _body : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
    public var _cw : stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter = (null : stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _cancelCtx : () -> Void = null;
    public var _bodyBytes : stdgo.GoInt64 = 0;
    public var _declBodyBytes : stdgo.GoInt64 = 0;
    public var _flow : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow);
    public var _state : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
    public var _resetQueued : Bool = false;
    public var _gotTrailerHeader : Bool = false;
    public var _wroteHeaders : Bool = false;
    public var _readDeadline : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _writeDeadline : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _closeErr : stdgo.Error = (null : stdgo.Error);
    public var _trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _reqTrailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public function new(?_sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, ?_id:stdgo.GoUInt32, ?_body:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, ?_cw:stdgo._internal.net.http.Http_t_http2closewaiter.T_http2closeWaiter, ?_ctx:stdgo._internal.context.Context_context.Context, ?_cancelCtx:() -> Void, ?_bodyBytes:stdgo.GoInt64, ?_declBodyBytes:stdgo.GoInt64, ?_flow:stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow, ?_state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState, ?_resetQueued:Bool, ?_gotTrailerHeader:Bool, ?_wroteHeaders:Bool, ?_readDeadline:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_writeDeadline:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_closeErr:stdgo.Error, ?_trailer:stdgo._internal.net.http.Http_header.Header, ?_reqTrailer:stdgo._internal.net.http.Http_header.Header) {
        if (_sc != null) this._sc = _sc;
        if (_id != null) this._id = _id;
        if (_body != null) this._body = _body;
        if (_cw != null) this._cw = _cw;
        if (_ctx != null) this._ctx = _ctx;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_bodyBytes != null) this._bodyBytes = _bodyBytes;
        if (_declBodyBytes != null) this._declBodyBytes = _declBodyBytes;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_state != null) this._state = _state;
        if (_resetQueued != null) this._resetQueued = _resetQueued;
        if (_gotTrailerHeader != null) this._gotTrailerHeader = _gotTrailerHeader;
        if (_wroteHeaders != null) this._wroteHeaders = _wroteHeaders;
        if (_readDeadline != null) this._readDeadline = _readDeadline;
        if (_writeDeadline != null) this._writeDeadline = _writeDeadline;
        if (_closeErr != null) this._closeErr = _closeErr;
        if (_trailer != null) this._trailer = _trailer;
        if (_reqTrailer != null) this._reqTrailer = _reqTrailer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_sc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn }) }, optional : false },
{ name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_body", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pipedott_http2pipe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pipedotT_http2pipe }) }, optional : false },
{ name : "_cw", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2closewaiterdott_http2closewaiter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2closewaiterdotT_http2closeWaiter }, optional : false },
{ name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false },
{ name : "_cancelCtx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_bodyBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_declBodyBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_flow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow }, optional : false },
{ name : "_inflow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow }, optional : false },
{ name : "_state", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamstatedott_http2streamstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamstatedotT_http2streamState }, optional : false },
{ name : "_resetQueued", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_gotTrailerHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_wroteHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_readDeadline", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_writeDeadline", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_closeErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_trailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "_reqTrailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false }])));
    public function __copy__() {
        return new T_http2stream(
_sc,
_id,
_body,
_cw,
_ctx,
_cancelCtx,
_bodyBytes,
_declBodyBytes,
_flow,
_inflow,
_state,
_resetQueued,
_gotTrailerHeader,
_wroteHeaders,
_readDeadline,
_writeDeadline,
_closeErr,
_trailer,
_reqTrailer);
    }
}
