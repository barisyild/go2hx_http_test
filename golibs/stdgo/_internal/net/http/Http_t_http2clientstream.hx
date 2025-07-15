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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2clientstream_static_extension.T_http2clientStream_static_extension) @:using(stdgo._internal.net.http.Http_t_http2clientstream_static_extension.T_http2clientStream_static_extension) class T_http2clientStream {
    public var _cc : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _reqCancel : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> = (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
    public var iD : stdgo.GoUInt32 = 0;
    public var _bufPipe : stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe = ({} : stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe);
    public var _requestedGzip : Bool = false;
    public var _isHead : Bool = false;
    public var _abortOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _abort : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _abortErr : stdgo.Error = (null : stdgo.Error);
    public var _peerClosed : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _donec : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _on100 : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _respHeaderRecv : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
    public var _flow : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow);
    public var _bytesRemain : stdgo.GoInt64 = 0;
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _reqBody : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _reqBodyContentLength : stdgo.GoInt64 = 0;
    public var _reqBodyClosed : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _sentEndStream : Bool = false;
    public var _sentHeaders : Bool = false;
    public var _firstByte : Bool = false;
    public var _pastHeaders : Bool = false;
    public var _pastTrailers : Bool = false;
    public var _num1xx : stdgo.GoUInt8 = 0;
    public var _readClosed : Bool = false;
    public var _readAborted : Bool = false;
    public var _trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _resTrailer : stdgo.Ref<stdgo._internal.net.http.Http_header.Header> = (null : stdgo.Ref<stdgo._internal.net.http.Http_header.Header>);
    public function new(?_cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, ?_ctx:stdgo._internal.context.Context_context.Context, ?_reqCancel:stdgo.Chan<{ }>, ?_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>, ?iD:stdgo.GoUInt32, ?_bufPipe:stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe, ?_requestedGzip:Bool, ?_isHead:Bool, ?_abortOnce:stdgo._internal.sync.Sync_once.Once, ?_abort:stdgo.Chan<{ }>, ?_abortErr:stdgo.Error, ?_peerClosed:stdgo.Chan<{ }>, ?_donec:stdgo.Chan<{ }>, ?_on100:stdgo.Chan<{ }>, ?_respHeaderRecv:stdgo.Chan<{ }>, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, ?_flow:stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow, ?_bytesRemain:stdgo.GoInt64, ?_readErr:stdgo.Error, ?_reqBody:stdgo._internal.io.Io_readcloser.ReadCloser, ?_reqBodyContentLength:stdgo.GoInt64, ?_reqBodyClosed:stdgo.Chan<{ }>, ?_sentEndStream:Bool, ?_sentHeaders:Bool, ?_firstByte:Bool, ?_pastHeaders:Bool, ?_pastTrailers:Bool, ?_num1xx:stdgo.GoUInt8, ?_readClosed:Bool, ?_readAborted:Bool, ?_trailer:stdgo._internal.net.http.Http_header.Header, ?_resTrailer:stdgo.Ref<stdgo._internal.net.http.Http_header.Header>) {
        if (_cc != null) this._cc = _cc;
        if (_ctx != null) this._ctx = _ctx;
        if (_reqCancel != null) this._reqCancel = _reqCancel;
        if (_trace != null) this._trace = _trace;
        if (iD != null) this.iD = iD;
        if (_bufPipe != null) this._bufPipe = _bufPipe;
        if (_requestedGzip != null) this._requestedGzip = _requestedGzip;
        if (_isHead != null) this._isHead = _isHead;
        if (_abortOnce != null) this._abortOnce = _abortOnce;
        if (_abort != null) this._abort = _abort;
        if (_abortErr != null) this._abortErr = _abortErr;
        if (_peerClosed != null) this._peerClosed = _peerClosed;
        if (_donec != null) this._donec = _donec;
        if (_on100 != null) this._on100 = _on100;
        if (_respHeaderRecv != null) this._respHeaderRecv = _respHeaderRecv;
        if (_res != null) this._res = _res;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_bytesRemain != null) this._bytesRemain = _bytesRemain;
        if (_readErr != null) this._readErr = _readErr;
        if (_reqBody != null) this._reqBody = _reqBody;
        if (_reqBodyContentLength != null) this._reqBodyContentLength = _reqBodyContentLength;
        if (_reqBodyClosed != null) this._reqBodyClosed = _reqBodyClosed;
        if (_sentEndStream != null) this._sentEndStream = _sentEndStream;
        if (_sentHeaders != null) this._sentHeaders = _sentHeaders;
        if (_firstByte != null) this._firstByte = _firstByte;
        if (_pastHeaders != null) this._pastHeaders = _pastHeaders;
        if (_pastTrailers != null) this._pastTrailers = _pastTrailers;
        if (_num1xx != null) this._num1xx = _num1xx;
        if (_readClosed != null) this._readClosed = _readClosed;
        if (_readAborted != null) this._readAborted = _readAborted;
        if (_trailer != null) this._trailer = _trailer;
        if (_resTrailer != null) this._resTrailer = _resTrailer;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_cc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }) }, optional : false },
{ name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false },
{ name : "_reqCancel", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_trace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_clienttracedotclienttrace.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_clienttracedotClientTrace }) }, optional : false },
{ name : "iD", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_bufPipe", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pipedott_http2pipe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pipedotT_http2pipe }, optional : false },
{ name : "_requestedGzip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_isHead", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_abortOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false },
{ name : "_abort", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_abortErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_peerClosed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_donec", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_on100", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_respHeaderRecv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_res", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }) }, optional : false },
{ name : "_flow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow }, optional : false },
{ name : "_inflow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow }, optional : false },
{ name : "_bytesRemain", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_readErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_reqBody", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false },
{ name : "_reqBodyContentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_reqBodyClosed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_sentEndStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sentHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_firstByte", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_pastHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_pastTrailers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_num1xx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false },
{ name : "_readClosed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_readAborted", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_trailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "_resTrailer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }) }, optional : false }])));
    public function __copy__() {
        return new T_http2clientStream(
_cc,
_ctx,
_reqCancel,
_trace,
iD,
_bufPipe,
_requestedGzip,
_isHead,
_abortOnce,
_abort,
_abortErr,
_peerClosed,
_donec,
_on100,
_respHeaderRecv,
_res,
_flow,
_inflow,
_bytesRemain,
_readErr,
_reqBody,
_reqBodyContentLength,
_reqBodyClosed,
_sentEndStream,
_sentHeaders,
_firstByte,
_pastHeaders,
_pastTrailers,
_num1xx,
_readClosed,
_readAborted,
_trailer,
_resTrailer);
    }
}
