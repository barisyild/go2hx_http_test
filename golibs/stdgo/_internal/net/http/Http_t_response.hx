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
@:structInit @:using(stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension) @:using(stdgo._internal.net.http.Http_t_response_static_extension.T_response_static_extension) class T_response {
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var _reqBody : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _cancelCtx : stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
    public var _wroteHeader : Bool = false;
    public var _wroteContinue : Bool = false;
    public var _wants10KeepAlive : Bool = false;
    public var _wantsClose : Bool = false;
    public var _canWriteContinue : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _writeContinueMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _cw : stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter = ({} : stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter);
    public var _handlerHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _calledHeader : Bool = false;
    public var _written : stdgo.GoInt64 = 0;
    public var _contentLength : stdgo.GoInt64 = 0;
    public var _status : stdgo.GoInt = 0;
    public var _closeAfterReply : Bool = false;
    public var _fullDuplex : Bool = false;
    public var _requestBodyLimitHit : Bool = false;
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _handlerDone : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _dateBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(29, 29).__setNumber32__();
    public var _clenBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
    public var _statusBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(3, 3).__setNumber32__();
    public var _closeNotifyCh : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public var _didCloseNotify : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public function new(?_conn:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?_reqBody:stdgo._internal.io.Io_readcloser.ReadCloser, ?_cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc, ?_wroteHeader:Bool, ?_wroteContinue:Bool, ?_wants10KeepAlive:Bool, ?_wantsClose:Bool, ?_canWriteContinue:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_writeContinueMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_cw:stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter, ?_handlerHeader:stdgo._internal.net.http.Http_header.Header, ?_calledHeader:Bool, ?_written:stdgo.GoInt64, ?_contentLength:stdgo.GoInt64, ?_status:stdgo.GoInt, ?_closeAfterReply:Bool, ?_fullDuplex:Bool, ?_requestBodyLimitHit:Bool, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_handlerDone:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_dateBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_clenBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_statusBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_closeNotifyCh:stdgo.Chan<Bool>, ?_didCloseNotify:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) {
        if (_conn != null) this._conn = _conn;
        if (_req != null) this._req = _req;
        if (_reqBody != null) this._reqBody = _reqBody;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_wroteContinue != null) this._wroteContinue = _wroteContinue;
        if (_wants10KeepAlive != null) this._wants10KeepAlive = _wants10KeepAlive;
        if (_wantsClose != null) this._wantsClose = _wantsClose;
        if (_canWriteContinue != null) this._canWriteContinue = _canWriteContinue;
        if (_writeContinueMu != null) this._writeContinueMu = _writeContinueMu;
        if (_w != null) this._w = _w;
        if (_cw != null) this._cw = _cw;
        if (_handlerHeader != null) this._handlerHeader = _handlerHeader;
        if (_calledHeader != null) this._calledHeader = _calledHeader;
        if (_written != null) this._written = _written;
        if (_contentLength != null) this._contentLength = _contentLength;
        if (_status != null) this._status = _status;
        if (_closeAfterReply != null) this._closeAfterReply = _closeAfterReply;
        if (_fullDuplex != null) this._fullDuplex = _fullDuplex;
        if (_requestBodyLimitHit != null) this._requestBodyLimitHit = _requestBodyLimitHit;
        if (_trailers != null) this._trailers = _trailers;
        if (_handlerDone != null) this._handlerDone = _handlerDone;
        if (_dateBuf != null) this._dateBuf = _dateBuf;
        if (_clenBuf != null) this._clenBuf = _clenBuf;
        if (_statusBuf != null) this._statusBuf = _statusBuf;
        if (_closeNotifyCh != null) this._closeNotifyCh = _closeNotifyCh;
        if (_didCloseNotify != null) this._didCloseNotify = _didCloseNotify;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_conn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_conndott_conn.__type__stdgodot_internaldotnetdothttpdotHttp_t_conndotT_conn }) }, optional : false },
{ name : "_req", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) }, optional : false },
{ name : "_reqBody", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false },
{ name : "_cancelCtx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_cancelfuncdotcancelfunc.__type__stdgodot_internaldotcontextdotContext_cancelfuncdotCancelFunc }, optional : false },
{ name : "_wroteHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_wroteContinue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_wants10KeepAlive", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_wantsClose", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_canWriteContinue", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false },
{ name : "_writeContinueMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false },
{ name : "_cw", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_chunkwriterdott_chunkwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_chunkwriterdotT_chunkWriter }, optional : false },
{ name : "_handlerHeader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "_calledHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_written", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_status", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_closeAfterReply", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_fullDuplex", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_requestBodyLimitHit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_trailers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_handlerDone", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false },
{ name : "_dateBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 29) }, optional : false },
{ name : "_clenBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 10) }, optional : false },
{ name : "_statusBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 3) }, optional : false },
{ name : "_closeNotifyCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false },
{ name : "_didCloseNotify", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false }])));
    public function __copy__() {
        return new T_response(
_conn,
_req,
_reqBody,
_cancelCtx,
_wroteHeader,
_wroteContinue,
_wants10KeepAlive,
_wantsClose,
_canWriteContinue,
_writeContinueMu,
_w,
_cw,
_handlerHeader,
_calledHeader,
_written,
_contentLength,
_status,
_closeAfterReply,
_fullDuplex,
_requestBodyLimitHit,
_trailers,
_handlerDone,
_dateBuf,
_clenBuf,
_statusBuf,
_closeNotifyCh,
_didCloseNotify);
    }
}
