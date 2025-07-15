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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension) @:using(stdgo._internal.net.http.Http_t_http2clientconn_static_extension.T_http2ClientConn_static_extension) class T_http2ClientConn {
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
    public var _tconn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _tconnClosed : Bool = false;
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var _reused : stdgo.GoUInt32 = 0;
    public var _singleUse : Bool = false;
    public var _getConnCalled : Bool = false;
    public var _readerDone : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _readerErr : stdgo.Error = (null : stdgo.Error);
    public var _idleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _cond : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = (null : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
    public var _flow : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow);
    public var _doNotReuse : Bool = false;
    public var _closing : Bool = false;
    public var _closed : Bool = false;
    public var _seenSettings : Bool = false;
    public var _wantSettingsAck : Bool = false;
    public var _goAway : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>);
    public var _goAwayDebug : stdgo.GoString = "";
    public var _streams : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>>);
    public var _streamsReserved : stdgo.GoInt = 0;
    public var _nextStreamID : stdgo.GoUInt32 = 0;
    public var _pendingRequests : stdgo.GoInt = 0;
    public var _pings : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<{ }>> = (null : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<{ }>>);
    public var _br : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _lastActive : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _lastIdle : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _maxFrameSize : stdgo.GoUInt32 = 0;
    public var _maxConcurrentStreams : stdgo.GoUInt32 = 0;
    public var _peerMaxHeaderListSize : stdgo.GoUInt64 = 0;
    public var _peerMaxHeaderTableSize : stdgo.GoUInt32 = 0;
    public var _initialWindowSize : stdgo.GoUInt32 = 0;
    public var _reqHeaderMu : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _wmu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _bw : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _fr : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
    public var _werr : stdgo.Error = (null : stdgo.Error);
    public var _hbuf : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _henc : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = (null : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>);
    public function new(?_t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, ?_tconn:stdgo._internal.net.Net_conn.Conn, ?_tconnClosed:Bool, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?_reused:stdgo.GoUInt32, ?_singleUse:Bool, ?_getConnCalled:Bool, ?_readerDone:stdgo.Chan<{ }>, ?_readerErr:stdgo.Error, ?_idleTimeout:stdgo._internal.time.Time_duration.Duration, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_cond:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>, ?_flow:stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow, ?_doNotReuse:Bool, ?_closing:Bool, ?_closed:Bool, ?_seenSettings:Bool, ?_wantSettingsAck:Bool, ?_goAway:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>, ?_goAwayDebug:stdgo.GoString, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>>, ?_streamsReserved:stdgo.GoInt, ?_nextStreamID:stdgo.GoUInt32, ?_pendingRequests:stdgo.GoInt, ?_pings:stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<{ }>>, ?_br:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_lastActive:stdgo._internal.time.Time_time.Time, ?_lastIdle:stdgo._internal.time.Time_time.Time, ?_maxFrameSize:stdgo.GoUInt32, ?_maxConcurrentStreams:stdgo.GoUInt32, ?_peerMaxHeaderListSize:stdgo.GoUInt64, ?_peerMaxHeaderTableSize:stdgo.GoUInt32, ?_initialWindowSize:stdgo.GoUInt32, ?_reqHeaderMu:stdgo.Chan<{ }>, ?_wmu:stdgo._internal.sync.Sync_mutex.Mutex, ?_bw:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, ?_werr:stdgo.Error, ?_hbuf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_henc:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>) {
        if (_t != null) this._t = _t;
        if (_tconn != null) this._tconn = _tconn;
        if (_tconnClosed != null) this._tconnClosed = _tconnClosed;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_reused != null) this._reused = _reused;
        if (_singleUse != null) this._singleUse = _singleUse;
        if (_getConnCalled != null) this._getConnCalled = _getConnCalled;
        if (_readerDone != null) this._readerDone = _readerDone;
        if (_readerErr != null) this._readerErr = _readerErr;
        if (_idleTimeout != null) this._idleTimeout = _idleTimeout;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_mu != null) this._mu = _mu;
        if (_cond != null) this._cond = _cond;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_doNotReuse != null) this._doNotReuse = _doNotReuse;
        if (_closing != null) this._closing = _closing;
        if (_closed != null) this._closed = _closed;
        if (_seenSettings != null) this._seenSettings = _seenSettings;
        if (_wantSettingsAck != null) this._wantSettingsAck = _wantSettingsAck;
        if (_goAway != null) this._goAway = _goAway;
        if (_goAwayDebug != null) this._goAwayDebug = _goAwayDebug;
        if (_streams != null) this._streams = _streams;
        if (_streamsReserved != null) this._streamsReserved = _streamsReserved;
        if (_nextStreamID != null) this._nextStreamID = _nextStreamID;
        if (_pendingRequests != null) this._pendingRequests = _pendingRequests;
        if (_pings != null) this._pings = _pings;
        if (_br != null) this._br = _br;
        if (_lastActive != null) this._lastActive = _lastActive;
        if (_lastIdle != null) this._lastIdle = _lastIdle;
        if (_maxFrameSize != null) this._maxFrameSize = _maxFrameSize;
        if (_maxConcurrentStreams != null) this._maxConcurrentStreams = _maxConcurrentStreams;
        if (_peerMaxHeaderListSize != null) this._peerMaxHeaderListSize = _peerMaxHeaderListSize;
        if (_peerMaxHeaderTableSize != null) this._peerMaxHeaderTableSize = _peerMaxHeaderTableSize;
        if (_initialWindowSize != null) this._initialWindowSize = _initialWindowSize;
        if (_reqHeaderMu != null) this._reqHeaderMu = _reqHeaderMu;
        if (_wmu != null) this._wmu = _wmu;
        if (_bw != null) this._bw = _bw;
        if (_fr != null) this._fr = _fr;
        if (_werr != null) this._werr = _werr;
        if (_hbuf != null) this._hbuf = _hbuf;
        if (_henc != null) this._henc = _henc;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_t", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportdott_http2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportdotT_http2Transport }) }, optional : false },
{ name : "_tconn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false },
{ name : "_tconnClosed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_tlsState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false },
{ name : "_reused", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_singleUse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_getConnCalled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_readerDone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_readerErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_idleTimeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "_idleTimer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_cond", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_conddotcond.__type__stdgodot_internaldotsyncdotSync_conddotCond }) }, optional : false },
{ name : "_flow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow }, optional : false },
{ name : "_inflow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow }, optional : false },
{ name : "_doNotReuse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_closing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_seenSettings", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_wantSettingsAck", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_goAway", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }) }, optional : false },
{ name : "_goAwayDebug", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_streams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientstreamdott_http2clientstream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientstreamdotT_http2clientStream }) }) }, optional : false },
{ name : "_streamsReserved", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_nextStreamID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_pendingRequests", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_pings", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) }, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }) }, optional : false },
{ name : "_br", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false },
{ name : "_lastActive", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "_lastIdle", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false },
{ name : "_maxFrameSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_maxConcurrentStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_peerMaxHeaderListSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false },
{ name : "_peerMaxHeaderTableSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_initialWindowSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_reqHeaderMu", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_wmu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false },
{ name : "_bw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false },
{ name : "_fr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }) }, optional : false },
{ name : "_werr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_hbuf", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }, optional : false },
{ name : "_henc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_encoderdotencoder.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_encoderdotEncoder }) }, optional : false }])));
    public function __copy__() {
        return new T_http2ClientConn(
_t,
_tconn,
_tconnClosed,
_tlsState,
_reused,
_singleUse,
_getConnCalled,
_readerDone,
_readerErr,
_idleTimeout,
_idleTimer,
_mu,
_cond,
_flow,
_inflow,
_doNotReuse,
_closing,
_closed,
_seenSettings,
_wantSettingsAck,
_goAway,
_goAwayDebug,
_streams,
_streamsReserved,
_nextStreamID,
_pendingRequests,
_pings,
_br,
_lastActive,
_lastIdle,
_maxFrameSize,
_maxConcurrentStreams,
_peerMaxHeaderListSize,
_peerMaxHeaderTableSize,
_initialWindowSize,
_reqHeaderMu,
_wmu,
_bw,
_fr,
_werr,
_hbuf,
_henc);
    }
}
