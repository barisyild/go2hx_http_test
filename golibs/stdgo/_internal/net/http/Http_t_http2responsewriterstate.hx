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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2responsewriterstate_static_extension.T_http2responseWriterState_static_extension) @:using(stdgo._internal.net.http.Http_t_http2responsewriterstate_static_extension.T_http2responseWriterState_static_extension) class T_http2responseWriterState {
    public var _stream : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _handlerHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _snapHeader : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _status : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _sentHeader : Bool = false;
    public var _handlerDone : Bool = false;
    public var _dirty : Bool = false;
    public var _sentContentLen : stdgo.GoInt64 = 0;
    public var _wroteBytes : stdgo.GoInt64 = 0;
    public var _closeNotifierMu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _closeNotifierCh : stdgo.Chan<Bool> = (null : stdgo.Chan<Bool>);
    public function new(?_stream:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?_conn:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_handlerHeader:stdgo._internal.net.http.Http_header.Header, ?_snapHeader:stdgo._internal.net.http.Http_header.Header, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_status:stdgo.GoInt, ?_wroteHeader:Bool, ?_sentHeader:Bool, ?_handlerDone:Bool, ?_dirty:Bool, ?_sentContentLen:stdgo.GoInt64, ?_wroteBytes:stdgo.GoInt64, ?_closeNotifierMu:stdgo._internal.sync.Sync_mutex.Mutex, ?_closeNotifierCh:stdgo.Chan<Bool>) {
        if (_stream != null) this._stream = _stream;
        if (_req != null) this._req = _req;
        if (_conn != null) this._conn = _conn;
        if (_bw != null) this._bw = _bw;
        if (_handlerHeader != null) this._handlerHeader = _handlerHeader;
        if (_snapHeader != null) this._snapHeader = _snapHeader;
        if (_trailers != null) this._trailers = _trailers;
        if (_status != null) this._status = _status;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_sentHeader != null) this._sentHeader = _sentHeader;
        if (_handlerDone != null) this._handlerDone = _handlerDone;
        if (_dirty != null) this._dirty = _dirty;
        if (_sentContentLen != null) this._sentContentLen = _sentContentLen;
        if (_wroteBytes != null) this._wroteBytes = _wroteBytes;
        if (_closeNotifierMu != null) this._closeNotifierMu = _closeNotifierMu;
        if (_closeNotifierCh != null) this._closeNotifierCh = _closeNotifierCh;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_stream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamdott_http2stream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamdotT_http2stream }) }, optional : false },
{ name : "_req", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) }, optional : false },
{ name : "_conn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn }) }, optional : false },
{ name : "_bw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false },
{ name : "_handlerHeader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "_snapHeader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "_trailers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_status", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_wroteHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sentHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_handlerDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_dirty", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sentContentLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_wroteBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_closeNotifierMu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_closeNotifierCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_http2responseWriterState(
_stream,
_req,
_conn,
_bw,
_handlerHeader,
_snapHeader,
_trailers,
_status,
_wroteHeader,
_sentHeader,
_handlerDone,
_dirty,
_sentContentLen,
_wroteBytes,
_closeNotifierMu,
_closeNotifierCh);
    }
}
