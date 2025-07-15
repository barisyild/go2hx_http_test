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
@:structInit @:using(stdgo._internal.net.http.Http_t_persistconn_static_extension.T_persistConn_static_extension) @:using(stdgo._internal.net.http.Http_t_persistconn_static_extension.T_persistConn_static_extension) class T_persistConn {
    public var _alt : stdgo._internal.net.http.Http_roundtripper.RoundTripper = (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
    public var _cacheKey : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey = ({} : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey);
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _nwrite : stdgo.GoInt64 = 0;
    public var _reqch : stdgo.Chan<stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan>);
    public var _writech : stdgo.Chan<stdgo._internal.net.http.Http_t_writerequest.T_writeRequest> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_writerequest.T_writeRequest>);
    public var _closech : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _isProxy : Bool = false;
    public var _sawEOF : Bool = false;
    public var _readLimit : stdgo.GoInt64 = 0;
    public var _writeErrCh : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _writeLoopDone : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _idleAt : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _numExpectedResponses : stdgo.GoInt = 0;
    public var _closed : stdgo.Error = (null : stdgo.Error);
    public var _canceledErr : stdgo.Error = (null : stdgo.Error);
    public var _broken : Bool = false;
    public var _reused : Bool = false;
    public var _mutateHeaderFunc : stdgo._internal.net.http.Http_header.Header -> Void = null;
    public function new(?_alt:stdgo._internal.net.http.Http_roundtripper.RoundTripper, ?_t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, ?_cacheKey:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, ?_conn:stdgo._internal.net.Net_conn.Conn, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_nwrite:stdgo.GoInt64, ?_reqch:stdgo.Chan<stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan>, ?_writech:stdgo.Chan<stdgo._internal.net.http.Http_t_writerequest.T_writeRequest>, ?_closech:stdgo.Chan<{ }>, ?_isProxy:Bool, ?_sawEOF:Bool, ?_readLimit:stdgo.GoInt64, ?_writeErrCh:stdgo.Chan<stdgo.Error>, ?_writeLoopDone:stdgo.Chan<{ }>, ?_idleAt:stdgo._internal.time.Time_time.Time, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_numExpectedResponses:stdgo.GoInt, ?_closed:stdgo.Error, ?_canceledErr:stdgo.Error, ?_broken:Bool, ?_reused:Bool, ?_mutateHeaderFunc:stdgo._internal.net.http.Http_header.Header -> Void) {
        if (_alt != null) this._alt = _alt;
        if (_t != null) this._t = _t;
        if (_cacheKey != null) this._cacheKey = _cacheKey;
        if (_conn != null) this._conn = _conn;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_br != null) this._br = _br;
        if (_bw != null) this._bw = _bw;
        if (_nwrite != null) this._nwrite = _nwrite;
        if (_reqch != null) this._reqch = _reqch;
        if (_writech != null) this._writech = _writech;
        if (_closech != null) this._closech = _closech;
        if (_isProxy != null) this._isProxy = _isProxy;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
        if (_readLimit != null) this._readLimit = _readLimit;
        if (_writeErrCh != null) this._writeErrCh = _writeErrCh;
        if (_writeLoopDone != null) this._writeLoopDone = _writeLoopDone;
        if (_idleAt != null) this._idleAt = _idleAt;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_mu != null) this._mu = _mu;
        if (_numExpectedResponses != null) this._numExpectedResponses = _numExpectedResponses;
        if (_closed != null) this._closed = _closed;
        if (_canceledErr != null) this._canceledErr = _canceledErr;
        if (_broken != null) this._broken = _broken;
        if (_reused != null) this._reused = _reused;
        if (_mutateHeaderFunc != null) this._mutateHeaderFunc = _mutateHeaderFunc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_alt", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper }, optional : false },
{ name : "_t", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_transportdottransport.__type__stdgodot_internaldotnetdothttpdotHttp_transportdotTransport }) }, optional : false },
{ name : "_cacheKey", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, optional : false },
{ name : "_conn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false },
{ name : "_tlsState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false },
{ name : "_br", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false },
{ name : "_bw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false },
{ name : "_nwrite", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_reqch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_requestandchandott_requestandchan.__type__stdgodot_internaldotnetdothttpdotHttp_t_requestandchandotT_requestAndChan }) }, optional : false },
{ name : "_writech", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_writerequestdott_writerequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_writerequestdotT_writeRequest }) }, optional : false },
{ name : "_closech", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_isProxy", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sawEOF", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_readLimit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "_writeErrCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) }, optional : false },
{ name : "_writeLoopDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_idleAt", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "_idleTimer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_numExpectedResponses", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_closed", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_canceledErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_broken", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_reused", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_mutateHeaderFunc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_persistConn(
_alt,
_t,
_cacheKey,
_conn,
_tlsState,
_br,
_bw,
_nwrite,
_reqch,
_writech,
_closech,
_isProxy,
_sawEOF,
_readLimit,
_writeErrCh,
_writeLoopDone,
_idleAt,
_idleTimer,
_mu,
_numExpectedResponses,
_closed,
_canceledErr,
_broken,
_reused,
_mutateHeaderFunc);
    }
}
