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
@:structInit @:using(stdgo._internal.net.http.Http_t_conn_static_extension.T_conn_static_extension) @:using(stdgo._internal.net.http.Http_t_conn_static_extension.T_conn_static_extension) class T_conn {
    public var _server : stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
    public var _cancelCtx : stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc);
    public var _rwc : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _remoteAddr : stdgo.GoString = "";
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _r : stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>);
    public var _bufr : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _bufw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _lastMethod : stdgo.GoString = "";
    public var _curReq : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.net.http.Http_t_response.T_response> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.net.http.Http_t_response.T_response>);
    public var _curState : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic__uint64.Uint64);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _hijackedv : Bool = false;
    public function new(?_server:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, ?_cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc, ?_rwc:stdgo._internal.net.Net_conn.Conn, ?_remoteAddr:stdgo.GoString, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?_werr:stdgo.Error, ?_r:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>, ?_bufr:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_bufw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_lastMethod:stdgo.GoString, ?_curReq:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.net.http.Http_t_response.T_response>, ?_curState:stdgo._internal.sync.atomic_.Atomic__uint64.Uint64, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_hijackedv:Bool) {
        if (_server != null) this._server = _server;
        if (_cancelCtx != null) this._cancelCtx = _cancelCtx;
        if (_rwc != null) this._rwc = _rwc;
        if (_remoteAddr != null) this._remoteAddr = _remoteAddr;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_werr != null) this._werr = _werr;
        if (_r != null) this._r = _r;
        if (_bufr != null) this._bufr = _bufr;
        if (_bufw != null) this._bufw = _bufw;
        if (_lastMethod != null) this._lastMethod = _lastMethod;
        if (_curReq != null) this._curReq = _curReq;
        if (_curState != null) this._curState = _curState;
        if (_mu != null) this._mu = _mu;
        if (_hijackedv != null) this._hijackedv = _hijackedv;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_server", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer }) }, optional : false },
{ name : "_cancelCtx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_cancelfuncdotcancelfunc.__type__stdgodot_internaldotcontextdotContext_cancelfuncdotCancelFunc }, optional : false },
{ name : "_rwc", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false },
{ name : "_remoteAddr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_tlsState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false },
{ name : "_werr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connreaderdott_connreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_connreaderdotT_connReader }) }, optional : false },
{ name : "_bufr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false },
{ name : "_bufw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false },
{ name : "_lastMethod", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_curReq", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__pointer_dotpointer_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__pointer_dotPointer_ }, optional : false },
{ name : "_curState", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__uint64dotuint64.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__uint64dotUint64 }, optional : false },
{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_hijackedv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_conn(
_server,
_cancelCtx,
_rwc,
_remoteAddr,
_tlsState,
_werr,
_r,
_bufr,
_bufw,
_lastMethod,
_curReq,
_curState,
_mu,
_hijackedv);
    }
}
